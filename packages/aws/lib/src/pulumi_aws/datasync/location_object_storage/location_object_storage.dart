import 'package:pulumi/pulumi.dart';
import 'location_object_storage_args.dart';

/// Manages a Object Storage Location within AWS DataSync.
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
/// const example = new aws.datasync.LocationObjectStorage("example", {
/// agentArns: [exampleAwsDatasyncAgent.arn],
/// serverHostname: "example",
/// bucketName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.LocationObjectStorage("example",
/// agent_arns=[example_aws_datasync_agent["arn"]],
/// server_hostname="example",
/// bucket_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DataSync.LocationObjectStorage("example", new()
/// {
/// AgentArns = new[]
/// {
/// exampleAwsDatasyncAgent.Arn,
/// },
/// ServerHostname = "example",
/// BucketName = "example",
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
/// _, err := datasync.NewLocationObjectStorage(ctx, "example", &datasync.LocationObjectStorageArgs{
/// AgentArns: pulumi.StringArray{
/// exampleAwsDatasyncAgent.Arn,
/// },
/// ServerHostname: pulumi.String("example"),
/// BucketName:     pulumi.String("example"),
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
/// import com.pulumi.aws.datasync.LocationObjectStorage;
/// import com.pulumi.aws.datasync.LocationObjectStorageArgs;
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
/// var example = new LocationObjectStorage("example", LocationObjectStorageArgs.builder()
/// .agentArns(exampleAwsDatasyncAgent.arn())
/// .serverHostname("example")
/// .bucketName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datasync:LocationObjectStorage
/// properties:
/// agentArns:
/// - ${exampleAwsDatasyncAgent.arn}
/// serverHostname: example
/// bucketName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the DataSync object storage location.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.datasync.LocationObjectStorage`" pulumi-lang-dotnet="`aws.datasync.LocationObjectStorage`" pulumi-lang-go="`datasync.LocationObjectStorage`" pulumi-lang-python="`datasync.LocationObjectStorage`" pulumi-lang-yaml="`aws.datasync.LocationObjectStorage`" pulumi-lang-java="`aws.datasync.LocationObjectStorage`">`aws.datasync.LocationObjectStorage`</span> using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationObjectStorage:LocationObjectStorage example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class LocationObjectStorage extends CustomResource {
  /// The access key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use <span pulumi-lang-nodejs="`accessKey`" pulumi-lang-dotnet="`AccessKey`" pulumi-lang-go="`accessKey`" pulumi-lang-python="`access_key`" pulumi-lang-yaml="`accessKey`" pulumi-lang-java="`accessKey`">`access_key`</span> and <span pulumi-lang-nodejs="`secretKey`" pulumi-lang-dotnet="`SecretKey`" pulumi-lang-go="`secretKey`" pulumi-lang-python="`secret_key`" pulumi-lang-yaml="`secretKey`" pulumi-lang-java="`secretKey`">`secret_key`</span> to provide the user name and password, respectively.
  late final Output<String?> accessKey;

  /// A list of DataSync Agent ARNs with which this location will be associated. For agentless cross-cloud transfers, this parameter does not need to be specified.
  late final Output<List<String>?> agentArns;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final Output<String> arn;

  /// The bucket on the self-managed object storage server that is used to read data from.
  late final Output<String> bucketName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The secret key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use <span pulumi-lang-nodejs="`accessKey`" pulumi-lang-dotnet="`AccessKey`" pulumi-lang-go="`accessKey`" pulumi-lang-python="`access_key`" pulumi-lang-yaml="`accessKey`" pulumi-lang-java="`accessKey`">`access_key`</span> and <span pulumi-lang-nodejs="`secretKey`" pulumi-lang-dotnet="`SecretKey`" pulumi-lang-go="`secretKey`" pulumi-lang-python="`secret_key`" pulumi-lang-yaml="`secretKey`" pulumi-lang-java="`secretKey`">`secret_key`</span> to provide the user name and password, respectively.
  late final Output<String?> secretKey;

  /// Specifies a certificate to authenticate with an object storage system that uses a private or self-signed certificate authority (CA). You must specify a Base64-encoded .pem string. The certificate can be up to 32768 bytes (before Base64 encoding).
  late final Output<String?> serverCertificate;

  /// The name of the self-managed object storage server. This value is the IP address or Domain Name Service (DNS) name of the object storage server. An agent uses this host name to mount the object storage server in a network.
  late final Output<String> serverHostname;

  /// The port that your self-managed object storage server accepts inbound network traffic on. The server port is set by default to TCP 80 (`HTTP`) or TCP 443 (`HTTPS`). You can specify a custom port if your self-managed object storage server requires one.
  late final Output<int?> serverPort;

  /// The protocol that the object storage server uses to communicate. Valid values are `HTTP` or `HTTPS`.
  late final Output<String?> serverProtocol;

  /// A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  late final Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The URL of the Object Storage location that was described.
  late final Output<String> uri;

  LocationObjectStorage(
    String name, {
    LocationObjectStorageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationObjectStorage:LocationObjectStorage',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessKey = Output.createUnknown<String?>();
    this.agentArns = Output.createUnknown<List<String>?>();
    this.arn = Output.createUnknown<String>();
    this.bucketName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.secretKey = Output.createUnknown<String?>();
    this.serverCertificate = Output.createUnknown<String?>();
    this.serverHostname = Output.createUnknown<String>();
    this.serverPort = Output.createUnknown<int?>();
    this.serverProtocol = Output.createUnknown<String?>();
    this.subdirectory = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.uri = Output.createUnknown<String>();
  }
}
