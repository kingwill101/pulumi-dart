import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_file_args.dart';

/// Manages a File within an Azure Storage File Share.
///
/// > **Note:** When using Azure Active Directory Authentication (i.e. setting the provider property `storage_use_azuread = true`), the principal running Terraform must have the *Storage File Data Privileged Contributor* IAM role assigned. The *Storage File Data SMB Share Contributor* does not have sufficient permissions to create files. Refer to [official documentation](https://learn.microsoft.com/en-us/rest/api/storageservices/authorize-with-azure-active-directory#permissions-for-file-service-operations) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "azureteststorage",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleShare = new azure.storage.Share("example", {
///     name: "sharename",
///     storageAccountId: exampleAccount.id,
///     quota: 50,
/// });
/// const exampleShareFile = new azure.storage.ShareFile("example", {
///     name: "my-awesome-content.zip",
///     storageShareUrl: exampleShare.url,
///     source: "some-local-file.zip",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="azureteststorage",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_share = azure.storage.Share("example",
///     name="sharename",
///     storage_account_id=example_account.id,
///     quota=50)
/// example_share_file = azure.storage.ShareFile("example",
///     name="my-awesome-content.zip",
///     storage_share_url=example_share.url,
///     source="some-local-file.zip")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "azureteststorage",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleShare = new Azure.Storage.Share("example", new()
///     {
///         Name = "sharename",
///         StorageAccountId = exampleAccount.Id,
///         Quota = 50,
///     });
///
///     var exampleShareFile = new Azure.Storage.ShareFile("example", new()
///     {
///         Name = "my-awesome-content.zip",
///         StorageShareUrl = exampleShare.Url,
///         Source = "some-local-file.zip",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("azureteststorage"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleShare, err := storage.NewShare(ctx, "example", &storage.ShareArgs{
/// 			Name:             pulumi.String("sharename"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 			Quota:            pulumi.Int(50),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewShareFile(ctx, "example", &storage.ShareFileArgs{
/// 			Name:            pulumi.String("my-awesome-content.zip"),
/// 			StorageShareUrl: exampleShare.Url,
/// 			Source:          pulumi.String("some-local-file.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Share;
/// import com.pulumi.azure.storage.ShareArgs;
/// import com.pulumi.azure.storage.ShareFile;
/// import com.pulumi.azure.storage.ShareFileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("azureteststorage")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("sharename")
///             .storageAccountId(exampleAccount.id())
///             .quota(50)
///             .build());
///
///         var exampleShareFile = new ShareFile("exampleShareFile", ShareFileArgs.builder()
///             .name("my-awesome-content.zip")
///             .storageShareUrl(exampleShare.url())
///             .source("some-local-file.zip")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: azureteststorage
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleShare:
///     type: azure:storage:Share
///     name: example
///     properties:
///       name: sharename
///       storageAccountId: ${exampleAccount.id}
///       quota: 50
///   exampleShareFile:
///     type: azure:storage:ShareFile
///     name: example
///     properties:
///       name: my-awesome-content.zip
///       storageShareUrl: ${exampleShare.url}
///       source: some-local-file.zip
/// ```
///
///
/// ## Import
///
/// Directories within an Azure Storage File Share can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/shareFile:ShareFile example https://account1.file.core.windows.net/share1/file1
/// ```
class ShareFile extends pulumi.CustomResource {
  /// Sets the file’s Content-Disposition header.
  late final pulumi.Output<String?> contentDisposition;
  /// Specifies which content encodings have been applied to the file.
  late final pulumi.Output<String?> contentEncoding;
  /// The length in bytes of the file content
  late final pulumi.Output<int> contentLength;
  /// The MD5 sum of the file contents. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This property is intended to be used with the Terraform internal filemd5 and md5 functions when `source` is defined.
  late final pulumi.Output<String?> contentMd5;
  /// The content type of the share file. Defaults to `application/octet-stream`.
  late final pulumi.Output<String?> contentType;
  /// A mapping of metadata to assign to this file.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name (or path) of the File that should be created within this File Share. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The storage share directory that you would like the file placed into. Changing this forces a new resource to be created. Defaults to `""`.
  late final pulumi.Output<String?> path;
  /// An absolute path to a file on the local system. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The file specified with `source` can not be empty.
  late final pulumi.Output<String?> source;
  late final pulumi.Output<String> storageShareId;
  /// The Storage Share URL in which this file will be placed into. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageShareUrl;

  /// Creates a new [ShareFile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShareFile]. {@macro pulumi_storage_share_file_share_file_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShareFile(
    String name, {
    ShareFileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/shareFile:ShareFile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.contentDisposition = registerOutput<String?>('contentDisposition');
    this.contentEncoding = registerOutput<String?>('contentEncoding');
    this.contentLength = registerOutput<int>('contentLength');
    this.contentMd5 = registerOutput<String?>('contentMd5');
    this.contentType = registerOutput<String?>('contentType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String?>('path');
    this.source = registerOutput<String?>('source');
    this.storageShareId = registerOutput<String>('storageShareId');
    this.storageShareUrl = registerOutput<String>('storageShareUrl');
  }
}
