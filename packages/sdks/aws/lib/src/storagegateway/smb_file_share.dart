import 'package:pulumi/pulumi.dart' as pulumi;
import 'smb_file_share_args.dart';
import 'smb_file_share_cache_attributes.dart';
import 'smb_file_share_state.dart';

/// Manages an AWS Storage Gateway SMB File Share.
///
/// ## Example Usage
///
/// ### Active Directory Authentication
///
/// &gt; **NOTE:** The gateway must have already joined the Active Directory domain prior to SMB file share creationE.g., via "SMB Settings" in the AWS Storage Gateway console or `smb_active_directory_settings` in the `aws.storagegateway.Gateway` resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.SmbFileShare("example", {
///     authentication: "ActiveDirectory",
///     gatewayArn: exampleAwsStoragegatewayGateway.arn,
///     locationArn: exampleAwsS3Bucket.arn,
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.SmbFileShare("example",
///     authentication="ActiveDirectory",
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
///     var example = new Aws.StorageGateway.SmbFileShare("example", new()
///     {
///         Authentication = "ActiveDirectory",
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
/// 		_, err := storagegateway.NewSmbFileShare(ctx, "example", &storagegateway.SmbFileShareArgs{
/// 			Authentication: pulumi.String("ActiveDirectory"),
/// 			GatewayArn:     pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// 			LocationArn:    pulumi.Any(exampleAwsS3Bucket.Arn),
/// 			RoleArn:        pulumi.Any(exampleAwsIamRole.Arn),
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
/// import com.pulumi.aws.storagegateway.SmbFileShare;
/// import com.pulumi.aws.storagegateway.SmbFileShareArgs;
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
///         var example = new SmbFileShare("example", SmbFileShareArgs.builder()
///             .authentication("ActiveDirectory")
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
///     type: aws:storagegateway:SmbFileShare
///     properties:
///       authentication: ActiveDirectory
///       gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
///       locationArn: ${exampleAwsS3Bucket.arn}
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### Guest Authentication
///
/// &gt; **NOTE:** The gateway must have already had the SMB guest password set prior to SMB file share creationE.g., via "SMB Settings" in the AWS Storage Gateway console or `smb_guest_password` in the `aws.storagegateway.Gateway` resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.SmbFileShare("example", {
///     authentication: "GuestAccess",
///     gatewayArn: exampleAwsStoragegatewayGateway.arn,
///     locationArn: exampleAwsS3Bucket.arn,
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.SmbFileShare("example",
///     authentication="GuestAccess",
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
///     var example = new Aws.StorageGateway.SmbFileShare("example", new()
///     {
///         Authentication = "GuestAccess",
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
/// 		_, err := storagegateway.NewSmbFileShare(ctx, "example", &storagegateway.SmbFileShareArgs{
/// 			Authentication: pulumi.String("GuestAccess"),
/// 			GatewayArn:     pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// 			LocationArn:    pulumi.Any(exampleAwsS3Bucket.Arn),
/// 			RoleArn:        pulumi.Any(exampleAwsIamRole.Arn),
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
/// import com.pulumi.aws.storagegateway.SmbFileShare;
/// import com.pulumi.aws.storagegateway.SmbFileShareArgs;
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
///         var example = new SmbFileShare("example", SmbFileShareArgs.builder()
///             .authentication("GuestAccess")
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
///     type: aws:storagegateway:SmbFileShare
///     properties:
///       authentication: GuestAccess
///       gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
///       locationArn: ${exampleAwsS3Bucket.arn}
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.SmbFileShare` using the SMB File Share Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/smbFileShare:SmbFileShare example arn:aws:storagegateway:us-east-1:123456789012:share/share-12345678
/// ```
class SmbFileShare extends pulumi.CustomResource {
  /// The files and folders on this share will only be visible to users with read access. Default value is `false`.
  late final pulumi.Output<bool?> accessBasedEnumeration;

  /// A list of users in the Active Directory that have admin access to the file share. Only valid if `authentication` is set to `ActiveDirectory`.
  late final pulumi.Output<List<String>?> adminUserLists;

  /// Amazon Resource Name (ARN) of the SMB File Share.
  late final pulumi.Output<String> arn;

  /// The Amazon Resource Name (ARN) of the CloudWatch Log Group used for the audit logs.
  late final pulumi.Output<String?> auditDestinationArn;

  /// The authentication method that users use to access the file share. Defaults to `ActiveDirectory`. Valid values: `ActiveDirectory`, `GuestAccess`.
  late final pulumi.Output<String?> authentication;

  /// The region of the S3 buck used by the file share. Required when specifying a `vpc_endpoint_dns_name`.
  late final pulumi.Output<String?> bucketRegion;

  /// Refresh cache information. see `cache_attributes` Block for more details.
  late final pulumi.Output<SmbFileShareCacheAttributes?> cacheAttributes;

  /// The case of an object name in an Amazon S3 bucket. For `ClientSpecified`, the client determines the case sensitivity. For `CaseSensitive`, the gateway determines the case sensitivity. The default value is `ClientSpecified`.
  late final pulumi.Output<String?> caseSensitivity;

  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  late final pulumi.Output<String?> defaultStorageClass;

  /// The name of the file share. Must be set if an S3 prefix name is set in `location_arn`.
  late final pulumi.Output<String> fileShareName;

  /// ID of the SMB File Share.
  late final pulumi.Output<String> fileshareId;

  /// Amazon Resource Name (ARN) of the file gateway.
  late final pulumi.Output<String> gatewayArn;

  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to `true`.
  late final pulumi.Output<bool?> guessMimeTypeEnabled;

  /// A list of users in the Active Directory that are not allowed to access the file share. Only valid if `authentication` is set to `ActiveDirectory`.
  late final pulumi.Output<List<String>?> invalidUserLists;

  /// Boolean value if `true` to use Amazon S3 server side encryption with your own AWS KMS key, or `false` to use a key managed by Amazon S3. Defaults to `false`.
  late final pulumi.Output<bool?> kmsEncrypted;

  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when `kms_encrypted` is true.
  late final pulumi.Output<String?> kmsKeyArn;

  /// The ARN of the backed storage used for storing file data.
  late final pulumi.Output<String> locationArn;

  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  late final pulumi.Output<String?> notificationPolicy;

  /// Access Control List permission for S3 objects. Defaults to `private`.
  late final pulumi.Output<String?> objectAcl;

  /// Boolean to indicate Opportunistic lock (oplock) status. Defaults to `true`.
  late final pulumi.Output<bool> oplocksEnabled;

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

  /// Set this value to `true` to enable ACL (access control list) on the SMB fileshare. Set it to `false` to map file and directory permissions to the POSIX permissions. This setting applies only to `ActiveDirectory` authentication type.
  late final pulumi.Output<bool?> smbAclEnabled;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **Note:** If you have previously included a `cache_attributes` block in your configuration, removing it will not reset the refresh cache value and the previous value will remain. You must explicitly set a new value to change it.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// A list of users in the Active Directory that are allowed to access the file share. If you need to specify an Active directory group, add '@' before the name of the group. It will be set on Allowed group in AWS console. Only valid if `authentication` is set to `ActiveDirectory`.
  late final pulumi.Output<List<String>?> validUserLists;

  /// The DNS name of the VPC endpoint for S3 private link.
  late final pulumi.Output<String?> vpcEndpointDnsName;

  /// Creates a new [SmbFileShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SmbFileShare]. {@macro pulumi_storagegateway_smb_file_share_smb_file_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SmbFileShare(
    String name, {
    SmbFileShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:storagegateway/smbFileShare:SmbFileShare',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessBasedEnumeration = registerOutput<bool?>('accessBasedEnumeration');
    adminUserLists = registerOutput<List<String>?>('adminUserLists');
    arn = registerOutput<String>('arn');
    auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    authentication = registerOutput<String?>('authentication');
    bucketRegion = registerOutput<String?>('bucketRegion');
    cacheAttributes = registerOutput<SmbFileShareCacheAttributes?>(
      'cacheAttributes',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SmbFileShareCacheAttributes.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    caseSensitivity = registerOutput<String?>('caseSensitivity');
    defaultStorageClass = registerOutput<String?>('defaultStorageClass');
    fileShareName = registerOutput<String>('fileShareName');
    fileshareId = registerOutput<String>('fileshareId');
    gatewayArn = registerOutput<String>('gatewayArn');
    guessMimeTypeEnabled = registerOutput<bool?>('guessMimeTypeEnabled');
    invalidUserLists = registerOutput<List<String>?>('invalidUserLists');
    kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    locationArn = registerOutput<String>('locationArn');
    notificationPolicy = registerOutput<String?>('notificationPolicy');
    objectAcl = registerOutput<String?>('objectAcl');
    oplocksEnabled = registerOutput<bool>('oplocksEnabled');
    path = registerOutput<String>('path');
    readOnly = registerOutput<bool?>('readOnly');
    region = registerOutput<String>('region');
    requesterPays = registerOutput<bool?>('requesterPays');
    roleArn = registerOutput<String>('roleArn');
    smbAclEnabled = registerOutput<bool?>('smbAclEnabled');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    validUserLists = registerOutput<List<String>?>('validUserLists');
    vpcEndpointDnsName = registerOutput<String?>('vpcEndpointDnsName');
  }

  /// Gets an existing [SmbFileShare] resource's state with the given [name] and [id].
  static SmbFileShare get(
    String name,
    pulumi.Input<String> id, {
    SmbFileShareState? state,
  }) {
    return SmbFileShare._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SmbFileShare._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:storagegateway/smbFileShare:SmbFileShare',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessBasedEnumeration = registerOutput<bool?>('accessBasedEnumeration');
    adminUserLists = registerOutput<List<String>?>('adminUserLists');
    arn = registerOutput<String>('arn');
    auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    authentication = registerOutput<String?>('authentication');
    bucketRegion = registerOutput<String?>('bucketRegion');
    cacheAttributes = registerOutput<SmbFileShareCacheAttributes?>(
      'cacheAttributes',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SmbFileShareCacheAttributes.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    caseSensitivity = registerOutput<String?>('caseSensitivity');
    defaultStorageClass = registerOutput<String?>('defaultStorageClass');
    fileShareName = registerOutput<String>('fileShareName');
    fileshareId = registerOutput<String>('fileshareId');
    gatewayArn = registerOutput<String>('gatewayArn');
    guessMimeTypeEnabled = registerOutput<bool?>('guessMimeTypeEnabled');
    invalidUserLists = registerOutput<List<String>?>('invalidUserLists');
    kmsEncrypted = registerOutput<bool?>('kmsEncrypted');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    locationArn = registerOutput<String>('locationArn');
    notificationPolicy = registerOutput<String?>('notificationPolicy');
    objectAcl = registerOutput<String?>('objectAcl');
    oplocksEnabled = registerOutput<bool>('oplocksEnabled');
    path = registerOutput<String>('path');
    readOnly = registerOutput<bool?>('readOnly');
    region = registerOutput<String>('region');
    requesterPays = registerOutput<bool?>('requesterPays');
    roleArn = registerOutput<String>('roleArn');
    smbAclEnabled = registerOutput<bool?>('smbAclEnabled');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    validUserLists = registerOutput<List<String>?>('validUserLists');
    vpcEndpointDnsName = registerOutput<String?>('vpcEndpointDnsName');
  }
}
