import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_file_share_args.dart';
import 'nfs_file_share_cache_attributes.dart';
import 'nfs_file_share_nfs_file_share_defaults.dart';
import 'nfs_file_share_state.dart';

/// Manages an AWS Storage Gateway NFS File Share.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.NfsFileShare("example", {
///     clientLists: ["0.0.0.0/0"],
///     gatewayArn: exampleAwsStoragegatewayGateway.arn,
///     locationArn: exampleAwsS3Bucket.arn,
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.NfsFileShare("example",
///     client_lists=["0.0.0.0/0"],
///     gateway_arn=example_aws_storagegateway_gateway["arn"],
///     location_arn=example_aws_s3_bucket["arn"],
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.NfsFileShare("example", new()
///     {
///         ClientLists = new[]
///         {
///             "0.0.0.0/0",
///         },
///         GatewayArn = exampleAwsStoragegatewayGateway.Arn,
///         LocationArn = exampleAwsS3Bucket.Arn,
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagegateway.NewNfsFileShare(ctx, "example", &storagegateway.NfsFileShareArgs{
/// 			ClientLists: pulumi.StringArray{
/// 				pulumi.String("0.0.0.0/0"),
/// 			},
/// 			GatewayArn:  pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// 			LocationArn: pulumi.Any(exampleAwsS3Bucket.Arn),
/// 			RoleArn:     pulumi.Any(exampleAwsIamRole.Arn),
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
/// import com.pulumi.aws.storagegateway.NfsFileShare;
/// import com.pulumi.aws.storagegateway.NfsFileShareArgs;
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
///         var example = new NfsFileShare("example", NfsFileShareArgs.builder()
///             .clientLists("0.0.0.0/0")
///             .gatewayArn(exampleAwsStoragegatewayGateway.arn())
///             .locationArn(exampleAwsS3Bucket.arn())
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:NfsFileShare
///     properties:
///       clientLists:
///         - 0.0.0.0/0
///       gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
///       locationArn: ${exampleAwsS3Bucket.arn}
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.NfsFileShare` using the NFS File Share Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/nfsFileShare:NfsFileShare example arn:aws:storagegateway:us-east-1:123456789012:share/share-12345678
/// ```
class NfsFileShare extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the NFS File Share.
  late final pulumi.Output<String> arn;

  /// The Amazon Resource Name (ARN) of the storage used for audit logs.
  late final pulumi.Output<String?> auditDestinationArn;

  /// The region of the S3 bucket used by the file share. Required when specifying `vpc_endpoint_dns_name`.
  late final pulumi.Output<String?> bucketRegion;

  /// Refresh cache information. see Cache Attributes for more details.
  late final pulumi.Output<NfsFileShareCacheAttributes?> cacheAttributes;

  /// The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to `["0.0.0.0/0"]` to not limit access. Minimum 1 item. Maximum 100 items.
  late final pulumi.Output<List<String>> clientLists;

  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  late final pulumi.Output<String?> defaultStorageClass;

  /// The name of the file share. Must be set if an S3 prefix name is set in `location_arn`.
  late final pulumi.Output<String> fileShareName;

  /// ID of the NFS File Share.
  late final pulumi.Output<String> fileshareId;

  /// Amazon Resource Name (ARN) of the file gateway.
  late final pulumi.Output<String> gatewayArn;

  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  late final pulumi.Output<bool?> guessMimeTypeEnabled;

  /// Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  late final pulumi.Output<bool?> kmsEncrypted;

  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is true.
  late final pulumi.Output<String?> kmsKeyArn;

  /// The ARN of the backed storage used for storing file data.
  late final pulumi.Output<String> locationArn;

  /// Nested argument with file share default values. More information below. see NFS File Share Defaults for more details.
  late final pulumi.Output<NfsFileShareNfsFileShareDefaults?>
  nfsFileShareDefaults;

  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  late final pulumi.Output<String?> notificationPolicy;

  /// Access Control List permission for S3 objects. Defaults to `private`.
  late final pulumi.Output<String?> objectAcl;

  /// File share path used by the NFS client to identify the mount point.
  late final pulumi.Output<String> path;

  /// Boolean to indicate write status of file share. File share does not accept writes if `true`. Defaults to `false`.
  late final pulumi.Output<bool?> readOnly;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to `true` if you want the requester to pay instead of the bucket owner. Defaults to `false`.
  late final pulumi.Output<bool?> requesterPays;

  /// The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  late final pulumi.Output<String> roleArn;

  /// Maps a user to anonymous user. Defaults to `RootSquash`. Valid values: `RootSquash` (only root is mapped to anonymous user), `NoSquash` (no one is mapped to anonymous user), `AllSquash` (everyone is mapped to anonymous user)
  late final pulumi.Output<String?> squash;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The DNS name of the VPC endpoint for S3 PrivateLink.
  late final pulumi.Output<String?> vpcEndpointDnsName;

  /// Creates a new [NfsFileShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NfsFileShare]. {@macro pulumi_storagegateway_nfs_file_share_nfs_file_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NfsFileShare(
    String name, {
    NfsFileShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:storagegateway/nfsFileShare:NfsFileShare',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    bucketRegion = registerOutput<String?>('bucketRegion');
    cacheAttributes = registerOutput<NfsFileShareCacheAttributes?>(
      'cacheAttributes',
    );
    clientLists = registerOutput<List<String>>('clientLists');
    defaultStorageClass = registerOutput<String?>('defaultStorageClass');
    fileShareName = registerOutput<String>('fileShareName');
    fileshareId = registerOutput<String>('fileshareId');
    gatewayArn = registerOutput<String>('gatewayArn');
    guessMimeTypeEnabled = registerOutput<bool?>('guessMimeTypeEnabled');
    kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    locationArn = registerOutput<String>('locationArn');
    nfsFileShareDefaults = registerOutput<NfsFileShareNfsFileShareDefaults?>(
      'nfsFileShareDefaults',
    );
    notificationPolicy = registerOutput<String?>('notificationPolicy');
    objectAcl = registerOutput<String?>('objectAcl');
    path = registerOutput<String>('path');
    readOnly = registerOutput<bool?>('readOnly');
    region = registerOutput<String>('region');
    requesterPays = registerOutput<bool?>('requesterPays');
    roleArn = registerOutput<String>('roleArn');
    squash = registerOutput<String?>('squash');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcEndpointDnsName = registerOutput<String?>('vpcEndpointDnsName');
  }

  /// Gets an existing [NfsFileShare] resource's state with the given [name] and [id].
  static NfsFileShare get(
    String name,
    pulumi.Input<String> id, {
    NfsFileShareState? state,
  }) {
    return NfsFileShare._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NfsFileShare._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:storagegateway/nfsFileShare:NfsFileShare',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    bucketRegion = registerOutput<String?>('bucketRegion');
    cacheAttributes = registerOutput<NfsFileShareCacheAttributes?>(
      'cacheAttributes',
    );
    clientLists = registerOutput<List<String>>('clientLists');
    defaultStorageClass = registerOutput<String?>('defaultStorageClass');
    fileShareName = registerOutput<String>('fileShareName');
    fileshareId = registerOutput<String>('fileshareId');
    gatewayArn = registerOutput<String>('gatewayArn');
    guessMimeTypeEnabled = registerOutput<bool?>('guessMimeTypeEnabled');
    kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    locationArn = registerOutput<String>('locationArn');
    nfsFileShareDefaults = registerOutput<NfsFileShareNfsFileShareDefaults?>(
      'nfsFileShareDefaults',
    );
    notificationPolicy = registerOutput<String?>('notificationPolicy');
    objectAcl = registerOutput<String?>('objectAcl');
    path = registerOutput<String>('path');
    readOnly = registerOutput<bool?>('readOnly');
    region = registerOutput<String>('region');
    requesterPays = registerOutput<bool?>('requesterPays');
    roleArn = registerOutput<String>('roleArn');
    squash = registerOutput<String?>('squash');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcEndpointDnsName = registerOutput<String?>('vpcEndpointDnsName');
  }
}
