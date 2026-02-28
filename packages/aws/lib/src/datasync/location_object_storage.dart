import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_object_storage_args.dart';

/// Manages a Object Storage Location within AWS DataSync.
///
/// > **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.LocationObjectStorage("example", {
///     agentArns: [exampleAwsDatasyncAgent.arn],
///     serverHostname: "example",
///     bucketName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.LocationObjectStorage("example",
///     agent_arns=[example_aws_datasync_agent["arn"]],
///     server_hostname="example",
///     bucket_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.LocationObjectStorage("example", new()
///     {
///         AgentArns = new[]
///         {
///             exampleAwsDatasyncAgent.Arn,
///         },
///         ServerHostname = "example",
///         BucketName = "example",
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
/// 		_, err := datasync.NewLocationObjectStorage(ctx, "example", &datasync.LocationObjectStorageArgs{
/// 			AgentArns: pulumi.StringArray{
/// 				exampleAwsDatasyncAgent.Arn,
/// 			},
/// 			ServerHostname: pulumi.String("example"),
/// 			BucketName:     pulumi.String("example"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new LocationObjectStorage("example", LocationObjectStorageArgs.builder()
///             .agentArns(exampleAwsDatasyncAgent.arn())
///             .serverHostname("example")
///             .bucketName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:LocationObjectStorage
///     properties:
///       agentArns:
///         - ${exampleAwsDatasyncAgent.arn}
///       serverHostname: example
///       bucketName: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync object storage location.
///
///
/// Using `pulumi import`, import `aws.datasync.LocationObjectStorage` using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/locationObjectStorage:LocationObjectStorage example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class LocationObjectStorage extends pulumi.CustomResource {
  /// The access key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  late final pulumi.Output<String?> accessKey;

  /// A list of DataSync Agent ARNs with which this location will be associated. For agentless cross-cloud transfers, this parameter does not need to be specified.
  late final pulumi.Output<List<String>?> agentArns;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;

  /// The bucket on the self-managed object storage server that is used to read data from.
  late final pulumi.Output<String> bucketName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The secret key is used if credentials are required to access the self-managed object storage server. If your object storage requires a user name and password to authenticate, use `access_key` and `secret_key` to provide the user name and password, respectively.
  late final pulumi.Output<String?> secretKey;

  /// Specifies a certificate to authenticate with an object storage system that uses a private or self-signed certificate authority (CA). You must specify a Base64-encoded .pem string. The certificate can be up to 32768 bytes (before Base64 encoding).
  late final pulumi.Output<String?> serverCertificate;

  /// The name of the self-managed object storage server. This value is the IP address or Domain Name Service (DNS) name of the object storage server. An agent uses this host name to mount the object storage server in a network.
  late final pulumi.Output<String> serverHostname;

  /// The port that your self-managed object storage server accepts inbound network traffic on. The server port is set by default to TCP 80 (`HTTP`) or TCP 443 (`HTTPS`). You can specify a custom port if your self-managed object storage server requires one.
  late final pulumi.Output<int?> serverPort;

  /// The protocol that the object storage server uses to communicate. Valid values are `HTTP` or `HTTPS`.
  late final pulumi.Output<String?> serverProtocol;

  /// A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write data to the HDFS cluster. If the subdirectory isn't specified, it will default to /.
  late final pulumi.Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The URL of the Object Storage location that was described.
  late final pulumi.Output<String> uri;

  /// Creates a new [LocationObjectStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocationObjectStorage]. {@macro pulumi_datasync_location_object_storage_location_object_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocationObjectStorage(
    String name, {
    LocationObjectStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/locationObjectStorage:LocationObjectStorage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessKey = registerOutput<String?>('accessKey');
    this.agentArns = registerOutput<List<String>?>('agentArns');
    this.arn = registerOutput<String>('arn');
    this.bucketName = registerOutput<String>('bucketName');
    this.region = registerOutput<String>('region');
    this.secretKey = registerOutput<String?>('secretKey');
    this.serverCertificate = registerOutput<String?>('serverCertificate');
    this.serverHostname = registerOutput<String>('serverHostname');
    this.serverPort = registerOutput<int?>('serverPort');
    this.serverProtocol = registerOutput<String?>('serverProtocol');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
