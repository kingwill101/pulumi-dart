import 'package:pulumi/pulumi.dart';
import '../location_azure_blob_sas_configuration/location_azure_blob_sas_configuration.dart';
import 'location_azure_blob_args.dart';

/// Manages a Microsoft Azure Blob Storage Location within AWS DataSync.
///
/// > **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.LocationAzureBlob("example", {
/// agentArns: [exampleAwsDatasyncAgent.arn],
/// authenticationType: "SAS",
/// containerUrl: "https://myaccount.blob.core.windows.net/mycontainer",
/// sasConfiguration: {
/// token: "sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.LocationAzureBlob("example",
/// agent_arns=[example_aws_datasync_agent["arn"]],
/// authentication_type="SAS",
/// container_url="https://myaccount.blob.core.windows.net/mycontainer",
/// sas_configuration={
/// "token": "sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DataSync.LocationAzureBlob("example", new()
/// {
/// AgentArns = new[]
/// {
/// exampleAwsDatasyncAgent.Arn,
/// },
/// AuthenticationType = "SAS",
/// ContainerUrl = "https://myaccount.blob.core.windows.net/mycontainer",
/// SasConfiguration = new Aws.DataSync.Inputs.LocationAzureBlobSasConfigurationArgs
/// {
/// Token = "sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datasync.NewLocationAzureBlob(ctx, "example", &datasync.LocationAzureBlobArgs{
/// AgentArns: pulumi.StringArray{
/// exampleAwsDatasyncAgent.Arn,
/// },
/// AuthenticationType: pulumi.String("SAS"),
/// ContainerUrl:       pulumi.String("https://myaccount.blob.core.windows.net/mycontainer"),
/// SasConfiguration: &datasync.LocationAzureBlobSasConfigurationArgs{
/// Token: pulumi.String("sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D"),
/// },
/// })
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
/// import com.pulumi.aws.datasync.LocationAzureBlob;
/// import com.pulumi.aws.datasync.LocationAzureBlobArgs;
/// import com.pulumi.aws.datasync.inputs.LocationAzureBlobSasConfigurationArgs;
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
/// var example = new LocationAzureBlob("example", LocationAzureBlobArgs.builder()
/// .agentArns(exampleAwsDatasyncAgent.arn())
/// .authenticationType("SAS")
/// .containerUrl("https://myaccount.blob.core.windows.net/mycontainer")
/// .sasConfiguration(LocationAzureBlobSasConfigurationArgs.builder()
/// .token("sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datasync:LocationAzureBlob
/// properties:
/// agentArns:
/// - ${exampleAwsDatasyncAgent.arn}
/// authenticationType: SAS
/// containerUrl: https://myaccount.blob.core.windows.net/mycontainer
/// sasConfiguration:
/// token: sp=r&st=2023-12-20T14:54:52Z&se=2023-12-20T22:54:52Z&spr=https&sv=2021-06-08&sr=c&sig=aBBKDWQvyuVcTPH9EBp%2FXTI9E%2F%2Fmq171%2BZU178wcwqU%3D
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the DataSync Azure Blob location.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.datasync.LocationAzureBlob`" pulumi-lang-dotnet="`aws.datasync.LocationAzureBlob`" pulumi-lang-go="`datasync.LocationAzureBlob`" pulumi-lang-python="`datasync.LocationAzureBlob`" pulumi-lang-yaml="`aws.datasync.LocationAzureBlob`" pulumi-lang-java="`aws.datasync.LocationAzureBlob`">`aws.datasync.LocationAzureBlob`</span> using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationAzureBlob:LocationAzureBlob example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class LocationAzureBlob extends CustomResource {
  /// The access tier that you want your objects or files transferred into. Valid values: `HOT`, `COOL` and `ARCHIVE`. Default: `HOT`.
  late final Output<String?> accessTier;

  /// A list of DataSync Agent ARNs with which this location will be associated.
  late final Output<List<String>> agentArns;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final Output<String> arn;

  /// The authentication method DataSync uses to access your Azure Blob Storage. Valid values: `SAS`.
  late final Output<String> authenticationType;

  /// The type of blob that you want your objects or files to be when transferring them into Azure Blob Storage. Valid values: `BLOB`. Default: `BLOB`.
  late final Output<String?> blobType;

  /// The URL of the Azure Blob Storage container involved in your transfer.
  late final Output<String> containerUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The SAS configuration that allows DataSync to access your Azure Blob Storage. See configuration below.
  late final Output<LocationAzureBlobSasConfiguration?> sasConfiguration;

  /// Path segments if you want to limit your transfer to a virtual directory in the container.
  late final Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> uri;

  LocationAzureBlob(
    String name, {
    LocationAzureBlobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationAzureBlob:LocationAzureBlob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessTier = registerOutput<String?>('accessTier');
    this.agentArns = registerOutput<List<String>>('agentArns');
    this.arn = registerOutput<String>('arn');
    this.authenticationType = registerOutput<String>('authenticationType');
    this.blobType = registerOutput<String?>('blobType');
    this.containerUrl = registerOutput<String>('containerUrl');
    this.region = registerOutput<String>('region');
    this.sasConfiguration =
        registerOutput<LocationAzureBlobSasConfiguration?>('sasConfiguration');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
