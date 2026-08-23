import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_azure_blob_args.dart';
import 'location_azure_blob_sas_configuration.dart';
import 'location_azure_blob_state.dart';

/// Manages a Microsoft Azure Blob Storage Location within AWS DataSync.
///
/// &gt; **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.LocationAzureBlob("example", {
///     agentArns: [exampleAwsDatasyncAgent.arn],
///     authenticationType: "SAS",
///     containerUrl: "https://myaccount.blob.core.windows.net/mycontainer",
///     sasConfiguration: {
///         token: "sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.LocationAzureBlob("example",
///     agent_arns=[example_aws_datasync_agent["arn"]],
///     authentication_type="SAS",
///     container_url="https://myaccount.blob.core.windows.net/mycontainer",
///     sas_configuration={
///         "token": "sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.LocationAzureBlob("example", new()
///     {
///         AgentArns = new[]
///         {
///             exampleAwsDatasyncAgent.Arn,
///         },
///         AuthenticationType = "SAS",
///         ContainerUrl = "https://myaccount.blob.core.windows.net/mycontainer",
///         SasConfiguration = new Aws.DataSync.Inputs.LocationAzureBlobSasConfigurationArgs
///         {
///             Token = "sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewLocationAzureBlob(ctx, "example", &datasync.LocationAzureBlobArgs{
/// 			AgentArns: pulumi.StringArray{
/// 				exampleAwsDatasyncAgent.Arn,
/// 			},
/// 			AuthenticationType: pulumi.String("SAS"),
/// 			ContainerUrl:       pulumi.String("https://myaccount.blob.core.windows.net/mycontainer"),
/// 			SasConfiguration: &datasync.LocationAzureBlobSasConfigurationArgs{
/// 				Token: pulumi.String("sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_datasync_locationazureblob" "example" {
///   agent_arns          = [exampleAwsDatasyncAgent.arn]
///   authentication_type = "SAS"
///   container_url       = "https://myaccount.blob.core.windows.net/mycontainer"
///   sas_configuration = {
///     token = "sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.LocationAzureBlob;
/// import com.pulumi.aws.datasync.LocationAzureBlobArgs;
/// import com.pulumi.aws.datasync.inputs.LocationAzureBlobSasConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new LocationAzureBlob("example", LocationAzureBlobArgs.builder()
///             .agentArns(exampleAwsDatasyncAgent.arn())
///             .authenticationType("SAS")
///             .containerUrl("https://myaccount.blob.core.windows.net/mycontainer")
///             .sasConfiguration(LocationAzureBlobSasConfigurationArgs.builder()
///                 .token("sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:LocationAzureBlob
///     properties:
///       agentArns:
///         - ${exampleAwsDatasyncAgent.arn}
///       authenticationType: SAS
///       containerUrl: https://myaccount.blob.core.windows.net/mycontainer
///       sasConfiguration:
///         token: sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync Azure Blob location.
///
///
/// Using `pulumi import`, import `aws.datasync.LocationAzureBlob` using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationAzureBlob:LocationAzureBlob example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class LocationAzureBlob extends pulumi.CustomResource {
  /// The access tier that you want your objects or files transferred into. Valid values: `HOT`, `COOL` and `ARCHIVE`. Default: `HOT`.
  late final pulumi.Output<String?> accessTier;
  /// A list of DataSync Agent ARNs with which this location will be associated.
  late final pulumi.Output<List<String>> agentArns;
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;
  /// The authentication method DataSync uses to access your Azure Blob Storage. Valid values: `SAS`.
  late final pulumi.Output<String> authenticationType;
  /// The type of blob that you want your objects or files to be when transferring them into Azure Blob Storage. Valid values: `BLOB`. Default: `BLOB`.
  late final pulumi.Output<String?> blobType;
  /// The URL of the Azure Blob Storage container involved in your transfer.
  late final pulumi.Output<String> containerUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The SAS configuration that allows DataSync to access your Azure Blob Storage. See configuration below.
  late final pulumi.Output<LocationAzureBlobSasConfiguration?> sasConfiguration;
  /// Path segments if you want to limit your transfer to a virtual directory in the container.
  late final pulumi.Output<String> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;

  /// Creates a new [LocationAzureBlob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocationAzureBlob]. {@macro pulumi_datasync_location_azure_blob_location_azure_blob_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocationAzureBlob(
    String name, {
    LocationAzureBlobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationAzureBlob:LocationAzureBlob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessTier = registerOutput<String?>('accessTier');
    agentArns = registerOutput<List<String>>('agentArns');
    arn = registerOutput<String>('arn');
    authenticationType = registerOutput<String>('authenticationType');
    blobType = registerOutput<String?>('blobType');
    containerUrl = registerOutput<String>('containerUrl');
    region = registerOutput<String>('region');
    sasConfiguration = registerOutput<LocationAzureBlobSasConfiguration?>('sasConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocationAzureBlobSasConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
  }

  /// Gets an existing [LocationAzureBlob] resource's state with the given [name] and [id].
  static LocationAzureBlob get(
    String name,
    pulumi.Input<String> id, {
    LocationAzureBlobState? state,
  }) {
    return LocationAzureBlob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocationAzureBlob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationAzureBlob:LocationAzureBlob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessTier = registerOutput<String?>('accessTier');
    agentArns = registerOutput<List<String>>('agentArns');
    arn = registerOutput<String>('arn');
    authenticationType = registerOutput<String>('authenticationType');
    blobType = registerOutput<String?>('blobType');
    containerUrl = registerOutput<String>('containerUrl');
    region = registerOutput<String>('region');
    sasConfiguration = registerOutput<LocationAzureBlobSasConfiguration?>('sasConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LocationAzureBlobSasConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    uri = registerOutput<String>('uri');
  }
}
