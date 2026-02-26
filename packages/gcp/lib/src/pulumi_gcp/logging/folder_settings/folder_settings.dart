import 'package:pulumi/pulumi.dart';
import 'folder_settings_args.dart';

/// Default resource settings control whether CMEK is required for new log buckets. These settings also determine the storage location for the _Default and _Required log buckets, and whether the _Default sink is enabled or disabled.
///
///
/// To get more information about FolderSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/TopLevel/getSettings)
/// * How-to Guides
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings)
///
/// ## Example Usage
///
/// ### Logging Folder Settings All
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myFolder = new gcp.organizations.Folder("my_folder", {
/// displayName: "folder-name",
/// parent: "organizations/123456789",
/// deletionProtection: false,
/// });
/// const settings = gcp.logging.getFolderSettingsOutput({
/// folder: myFolder.folderId,
/// });
/// const iam = new gcp.kms.CryptoKeyIAMMember("iam", {
/// cryptoKeyId: "kms-key",
/// role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member: settings.apply(settings => `serviceAccount:${settings.kmsServiceAccountId}`),
/// });
/// const example = new gcp.logging.FolderSettings("example", {
/// disableDefaultSink: true,
/// folder: myFolder.folderId,
/// kmsKeyName: "kms-key",
/// storageLocation: "us-central1",
/// }, {
/// dependsOn: [iam],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_folder = gcp.organizations.Folder("my_folder",
/// display_name="folder-name",
/// parent="organizations/123456789",
/// deletion_protection=False)
/// settings = gcp.logging.get_folder_settings_output(folder=my_folder.folder_id)
/// iam = gcp.kms.CryptoKeyIAMMember("iam",
/// crypto_key_id="kms-key",
/// role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member=settings.apply(lambda settings: f"serviceAccount:{settings.kms_service_account_id}"))
/// example = gcp.logging.FolderSettings("example",
/// disable_default_sink=True,
/// folder=my_folder.folder_id,
/// kms_key_name="kms-key",
/// storage_location="us-central1",
/// opts = pulumi.ResourceOptions(depends_on=[iam]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myFolder = new Gcp.Organizations.Folder("my_folder", new()
/// {
/// DisplayName = "folder-name",
/// Parent = "organizations/123456789",
/// DeletionProtection = false,
/// });
///
/// var settings = Gcp.Logging.GetFolderSettings.Invoke(new()
/// {
/// Folder = myFolder.FolderId,
/// });
///
/// var iam = new Gcp.Kms.CryptoKeyIAMMember("iam", new()
/// {
/// CryptoKeyId = "kms-key",
/// Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// Member = $"serviceAccount:{settings.Apply(getFolderSettingsResult => getFolderSettingsResult.KmsServiceAccountId)}",
/// });
///
/// var example = new Gcp.Logging.FolderSettings("example", new()
/// {
/// DisableDefaultSink = true,
/// Folder = myFolder.FolderId,
/// KmsKeyName = "kms-key",
/// StorageLocation = "us-central1",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// iam,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myFolder, err := organizations.NewFolder(ctx, "my_folder", &organizations.FolderArgs{
/// DisplayName:        pulumi.String("folder-name"),
/// Parent:             pulumi.String("organizations/123456789"),
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// settings := logging.LookupFolderSettingsOutput(ctx, logging.GetFolderSettingsOutputArgs{
/// Folder: myFolder.FolderId,
/// }, nil)
/// iam, err := kms.NewCryptoKeyIAMMember(ctx, "iam", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.String("kms-key"),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// Member: settings.ApplyT(func(settings logging.GetFolderSettingsResult) (string, error) {
/// return fmt.Sprintf("serviceAccount:%v", settings.KmsServiceAccountId), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = logging.NewFolderSettings(ctx, "example", &logging.FolderSettingsArgs{
/// DisableDefaultSink: pulumi.Bool(true),
/// Folder:             myFolder.FolderId,
/// KmsKeyName:         pulumi.String("kms-key"),
/// StorageLocation:    pulumi.String("us-central1"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// iam,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetFolderSettingsArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.logging.FolderSettings;
/// import com.pulumi.gcp.logging.FolderSettingsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myFolder = new Folder("myFolder", FolderArgs.builder()
/// .displayName("folder-name")
/// .parent("organizations/123456789")
/// .deletionProtection(false)
/// .build());
///
/// final var settings = LoggingFunctions.getFolderSettings(GetFolderSettingsArgs.builder()
/// .folder(myFolder.folderId())
/// .build());
///
/// var iam = new CryptoKeyIAMMember("iam", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId("kms-key")
/// .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
/// .member(settings.applyValue(_settings -> String.format("serviceAccount:%s", _settings.kmsServiceAccountId())))
/// .build());
///
/// var example = new FolderSettings("example", FolderSettingsArgs.builder()
/// .disableDefaultSink(true)
/// .folder(myFolder.folderId())
/// .kmsKeyName("kms-key")
/// .storageLocation("us-central1")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(iam)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:logging:FolderSettings
/// properties:
/// disableDefaultSink: true
/// folder: ${myFolder.folderId}
/// kmsKeyName: kms-key
/// storageLocation: us-central1
/// options:
/// dependsOn:
/// - ${iam}
/// myFolder:
/// type: gcp:organizations:Folder
/// name: my_folder
/// properties:
/// displayName: folder-name
/// parent: organizations/123456789
/// deletionProtection: false
/// iam:
/// type: gcp:kms:CryptoKeyIAMMember
/// properties:
/// cryptoKeyId: kms-key
/// role: roles/cloudkms.cryptoKeyEncrypterDecrypter
/// member: serviceAccount:${settings.kmsServiceAccountId}
/// variables:
/// settings:
/// fn::invoke:
/// function: gcp:logging:getFolderSettings
/// arguments:
/// folder: ${myFolder.folderId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// FolderSettings can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/settings`
///
/// * `{{folder}}`
///
/// When using the `pulumi import` command, FolderSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/folderSettings:FolderSettings default folders/{{folder}}/settings
/// ```
///
/// ```sh
/// $ pulumi import gcp:logging/folderSettings:FolderSettings default {{folder}}
/// ```
class FolderSettings extends CustomResource {
  /// If set to true, the _Default sink in newly created projects and folders will created in a disabled state. This can be used to automatically disable log storage if there is already an aggregated sink configured in the hierarchy. The _Default sink can be re-enabled manually if needed.
  late final Output<bool> disableDefaultSink;

  /// The folder for which to retrieve settings.
  late final Output<String> folder;

  /// The resource name for the configured Cloud KMS key.
  late final Output<String> kmsKeyName;

  /// The service account that will be used by the Log Router to access your Cloud KMS key.
  late final Output<String> kmsServiceAccountId;

  /// The service account for the given container. Sinks use this service account as their writerIdentity if no custom service account is provided.
  late final Output<String> loggingServiceAccountId;

  /// The resource name of the settings.
  late final Output<String> name;

  /// The storage location that Cloud Logging will use to create new resources when a location is needed but not explicitly provided.
  late final Output<String> storageLocation;

  FolderSettings(
    String name, {
    FolderSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:logging/folderSettings:FolderSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.disableDefaultSink = Output.createUnknown<bool>();
    this.folder = Output.createUnknown<String>();
    this.kmsKeyName = Output.createUnknown<String>();
    this.kmsServiceAccountId = Output.createUnknown<String>();
    this.loggingServiceAccountId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.storageLocation = Output.createUnknown<String>();
  }
}
