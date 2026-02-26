import 'package:pulumi/pulumi.dart';
import '../nfs_file_share_cache_attributes/nfs_file_share_cache_attributes.dart';
import '../nfs_file_share_nfs_file_share_defaults/nfs_file_share_nfs_file_share_defaults.dart';
import 'nfs_file_share_args.dart';

/// Manages an AWS Storage Gateway NFS File Share.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.NfsFileShare("example", {
/// clientLists: ["0.0.0.0/0"],
/// gatewayArn: exampleAwsStoragegatewayGateway.arn,
/// locationArn: exampleAwsS3Bucket.arn,
/// roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.NfsFileShare("example",
/// client_lists=["0.0.0.0/0"],
/// gateway_arn=example_aws_storagegateway_gateway["arn"],
/// location_arn=example_aws_s3_bucket["arn"],
/// role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.NfsFileShare("example", new()
/// {
/// ClientLists = new[]
/// {
/// "0.0.0.0/0",
/// },
/// GatewayArn = exampleAwsStoragegatewayGateway.Arn,
/// LocationArn = exampleAwsS3Bucket.Arn,
/// RoleArn = exampleAwsIamRole.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storagegateway.NewNfsFileShare(ctx, "example", &storagegateway.NfsFileShareArgs{
/// ClientLists: pulumi.StringArray{
/// pulumi.String("0.0.0.0/0"),
/// },
/// GatewayArn:  pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// LocationArn: pulumi.Any(exampleAwsS3Bucket.Arn),
/// RoleArn:     pulumi.Any(exampleAwsIamRole.Arn),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new NfsFileShare("example", NfsFileShareArgs.builder()
/// .clientLists("0.0.0.0/0")
/// .gatewayArn(exampleAwsStoragegatewayGateway.arn())
/// .locationArn(exampleAwsS3Bucket.arn())
/// .roleArn(exampleAwsIamRole.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:NfsFileShare
/// properties:
/// clientLists:
/// - 0.0.0.0/0
/// gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
/// locationArn: ${exampleAwsS3Bucket.arn}
/// roleArn: ${exampleAwsIamRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.storagegateway.NfsFileShare`" pulumi-lang-dotnet="`aws.storagegateway.NfsFileShare`" pulumi-lang-go="`storagegateway.NfsFileShare`" pulumi-lang-python="`storagegateway.NfsFileShare`" pulumi-lang-yaml="`aws.storagegateway.NfsFileShare`" pulumi-lang-java="`aws.storagegateway.NfsFileShare`">`aws.storagegateway.NfsFileShare`</span> using the NFS File Share Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/nfsFileShare:NfsFileShare example arn:aws:storagegateway:us-east-1:123456789012:share/share-12345678
/// ```
class NfsFileShare extends CustomResource {
  /// Amazon Resource Name (ARN) of the NFS File Share.
  late final Output<String> arn;

  /// The Amazon Resource Name (ARN) of the storage used for audit logs.
  late final Output<String?> auditDestinationArn;

  /// The region of the S3 bucket used by the file share. Required when specifying <span pulumi-lang-nodejs="`vpcEndpointDnsName`" pulumi-lang-dotnet="`VpcEndpointDnsName`" pulumi-lang-go="`vpcEndpointDnsName`" pulumi-lang-python="`vpc_endpoint_dns_name`" pulumi-lang-yaml="`vpcEndpointDnsName`" pulumi-lang-java="`vpcEndpointDnsName`">`vpc_endpoint_dns_name`</span>.
  late final Output<String?> bucketRegion;

  /// Refresh cache information. see Cache Attributes for more details.
  late final Output<NfsFileShareCacheAttributes?> cacheAttributes;

  /// The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to `["0.0.0.0/0"]` to not limit access. Minimum 1 item. Maximum 100 items.
  late final Output<List<String>> clientLists;

  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  late final Output<String?> defaultStorageClass;

  /// The name of the file share. Must be set if an S3 prefix name is set in <span pulumi-lang-nodejs="`locationArn`" pulumi-lang-dotnet="`LocationArn`" pulumi-lang-go="`locationArn`" pulumi-lang-python="`location_arn`" pulumi-lang-yaml="`locationArn`" pulumi-lang-java="`locationArn`">`location_arn`</span>.
  late final Output<String> fileShareName;

  /// ID of the NFS File Share.
  late final Output<String> fileshareId;

  /// Amazon Resource Name (ARN) of the file gateway.
  late final Output<String> gatewayArn;

  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> guessMimeTypeEnabled;

  /// Boolean value if <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to use Amazon S3 server side encryption with your own AWS KMS key, or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to use a key managed by Amazon S3. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> kmsEncrypted;

  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when <span pulumi-lang-nodejs="`kmsEncrypted`" pulumi-lang-dotnet="`KmsEncrypted`" pulumi-lang-go="`kmsEncrypted`" pulumi-lang-python="`kms_encrypted`" pulumi-lang-yaml="`kmsEncrypted`" pulumi-lang-java="`kmsEncrypted`">`kms_encrypted`</span> is true.
  late final Output<String?> kmsKeyArn;

  /// The ARN of the backed storage used for storing file data.
  late final Output<String> locationArn;

  /// Nested argument with file share default values. More information below. see NFS File Share Defaults for more details.
  late final Output<NfsFileShareNfsFileShareDefaults?> nfsFileShareDefaults;

  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  late final Output<String?> notificationPolicy;

  /// Access Control List permission for S3 objects. Defaults to <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.
  late final Output<String?> objectAcl;

  /// File share path used by the NFS client to identify the mount point.
  late final Output<String> path;

  /// Boolean to indicate write status of file share. File share does not accept writes if <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> readOnly;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if you want the requester to pay instead of the bucket owner. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> requesterPays;

  /// The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage.
  late final Output<String> roleArn;

  /// Maps a user to anonymous user. Defaults to `RootSquash`. Valid values: `RootSquash` (only root is mapped to anonymous user), `NoSquash` (no one is mapped to anonymous user), `AllSquash` (everyone is mapped to anonymous user)
  late final Output<String?> squash;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The DNS name of the VPC endpoint for S3 PrivateLink.
  late final Output<String?> vpcEndpointDnsName;

  NfsFileShare(
    String name, {
    NfsFileShareArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/nfsFileShare:NfsFileShare',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    this.bucketRegion = registerOutput<String?>('bucketRegion');
    this.cacheAttributes =
        registerOutput<NfsFileShareCacheAttributes?>('cacheAttributes');
    this.clientLists = registerOutput<List<String>>('clientLists');
    this.defaultStorageClass = registerOutput<String?>('defaultStorageClass');
    this.fileShareName = registerOutput<String>('fileShareName');
    this.fileshareId = registerOutput<String>('fileshareId');
    this.gatewayArn = registerOutput<String>('gatewayArn');
    this.guessMimeTypeEnabled = registerOutput<bool?>('guessMimeTypeEnabled');
    this.kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.locationArn = registerOutput<String>('locationArn');
    this.nfsFileShareDefaults =
        registerOutput<NfsFileShareNfsFileShareDefaults?>(
            'nfsFileShareDefaults');
    this.notificationPolicy = registerOutput<String?>('notificationPolicy');
    this.objectAcl = registerOutput<String?>('objectAcl');
    this.path = registerOutput<String>('path');
    this.readOnly = registerOutput<bool?>('readOnly');
    this.region = registerOutput<String>('region');
    this.requesterPays = registerOutput<bool?>('requesterPays');
    this.roleArn = registerOutput<String>('roleArn');
    this.squash = registerOutput<String?>('squash');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcEndpointDnsName = registerOutput<String?>('vpcEndpointDnsName');
  }
}
