import 'package:pulumi/pulumi.dart';
import '../smb_file_share_cache_attributes/smb_file_share_cache_attributes.dart';
import 'smb_file_share_args.dart';

/// Manages an AWS Storage Gateway SMB File Share.
///
/// ## Example Usage
///
/// ### Active Directory Authentication
///
/// > **NOTE:** The gateway must have already joined the Active Directory domain prior to SMB file share creationE.g., via "SMB Settings" in the AWS Storage Gateway console or <span pulumi-lang-nodejs="`smbActiveDirectorySettings`" pulumi-lang-dotnet="`SmbActiveDirectorySettings`" pulumi-lang-go="`smbActiveDirectorySettings`" pulumi-lang-python="`smb_active_directory_settings`" pulumi-lang-yaml="`smbActiveDirectorySettings`" pulumi-lang-java="`smbActiveDirectorySettings`">`smb_active_directory_settings`</span> in the <span pulumi-lang-nodejs="`aws.storagegateway.Gateway`" pulumi-lang-dotnet="`aws.storagegateway.Gateway`" pulumi-lang-go="`storagegateway.Gateway`" pulumi-lang-python="`storagegateway.Gateway`" pulumi-lang-yaml="`aws.storagegateway.Gateway`" pulumi-lang-java="`aws.storagegateway.Gateway`">`aws.storagegateway.Gateway`</span> resource.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.SmbFileShare("example", {
/// authentication: "ActiveDirectory",
/// gatewayArn: exampleAwsStoragegatewayGateway.arn,
/// locationArn: exampleAwsS3Bucket.arn,
/// roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.SmbFileShare("example",
/// authentication="ActiveDirectory",
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
/// var example = new Aws.StorageGateway.SmbFileShare("example", new()
/// {
/// Authentication = "ActiveDirectory",
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
/// _, err := storagegateway.NewSmbFileShare(ctx, "example", &storagegateway.SmbFileShareArgs{
/// Authentication: pulumi.String("ActiveDirectory"),
/// GatewayArn:     pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// LocationArn:    pulumi.Any(exampleAwsS3Bucket.Arn),
/// RoleArn:        pulumi.Any(exampleAwsIamRole.Arn),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new SmbFileShare("example", SmbFileShareArgs.builder()
/// .authentication("ActiveDirectory")
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
/// type: aws:storagegateway:SmbFileShare
/// properties:
/// authentication: ActiveDirectory
/// gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
/// locationArn: ${exampleAwsS3Bucket.arn}
/// roleArn: ${exampleAwsIamRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Guest Authentication
///
/// > **NOTE:** The gateway must have already had the SMB guest password set prior to SMB file share creationE.g., via "SMB Settings" in the AWS Storage Gateway console or <span pulumi-lang-nodejs="`smbGuestPassword`" pulumi-lang-dotnet="`SmbGuestPassword`" pulumi-lang-go="`smbGuestPassword`" pulumi-lang-python="`smb_guest_password`" pulumi-lang-yaml="`smbGuestPassword`" pulumi-lang-java="`smbGuestPassword`">`smb_guest_password`</span> in the <span pulumi-lang-nodejs="`aws.storagegateway.Gateway`" pulumi-lang-dotnet="`aws.storagegateway.Gateway`" pulumi-lang-go="`storagegateway.Gateway`" pulumi-lang-python="`storagegateway.Gateway`" pulumi-lang-yaml="`aws.storagegateway.Gateway`" pulumi-lang-java="`aws.storagegateway.Gateway`">`aws.storagegateway.Gateway`</span> resource.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.SmbFileShare("example", {
/// authentication: "GuestAccess",
/// gatewayArn: exampleAwsStoragegatewayGateway.arn,
/// locationArn: exampleAwsS3Bucket.arn,
/// roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.SmbFileShare("example",
/// authentication="GuestAccess",
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
/// var example = new Aws.StorageGateway.SmbFileShare("example", new()
/// {
/// Authentication = "GuestAccess",
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
/// _, err := storagegateway.NewSmbFileShare(ctx, "example", &storagegateway.SmbFileShareArgs{
/// Authentication: pulumi.String("GuestAccess"),
/// GatewayArn:     pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// LocationArn:    pulumi.Any(exampleAwsS3Bucket.Arn),
/// RoleArn:        pulumi.Any(exampleAwsIamRole.Arn),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new SmbFileShare("example", SmbFileShareArgs.builder()
/// .authentication("GuestAccess")
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
/// type: aws:storagegateway:SmbFileShare
/// properties:
/// authentication: GuestAccess
/// gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
/// locationArn: ${exampleAwsS3Bucket.arn}
/// roleArn: ${exampleAwsIamRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.storagegateway.SmbFileShare`" pulumi-lang-dotnet="`aws.storagegateway.SmbFileShare`" pulumi-lang-go="`storagegateway.SmbFileShare`" pulumi-lang-python="`storagegateway.SmbFileShare`" pulumi-lang-yaml="`aws.storagegateway.SmbFileShare`" pulumi-lang-java="`aws.storagegateway.SmbFileShare`">`aws.storagegateway.SmbFileShare`</span> using the SMB File Share Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/smbFileShare:SmbFileShare example arn:aws:storagegateway:us-east-1:123456789012:share/share-12345678
/// ```
class SmbFileShare extends CustomResource {
  /// The files and folders on this share will only be visible to users with read access. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> accessBasedEnumeration;

  /// A list of users in the Active Directory that have admin access to the file share. Only valid if <span pulumi-lang-nodejs="`authentication`" pulumi-lang-dotnet="`Authentication`" pulumi-lang-go="`authentication`" pulumi-lang-python="`authentication`" pulumi-lang-yaml="`authentication`" pulumi-lang-java="`authentication`">`authentication`</span> is set to `ActiveDirectory`.
  late final Output<List<String>?> adminUserLists;

  /// Amazon Resource Name (ARN) of the SMB File Share.
  late final Output<String> arn;

  /// The Amazon Resource Name (ARN) of the CloudWatch Log Group used for the audit logs.
  late final Output<String?> auditDestinationArn;

  /// The authentication method that users use to access the file share. Defaults to `ActiveDirectory`. Valid values: `ActiveDirectory`, `GuestAccess`.
  late final Output<String?> authentication;

  /// The region of the S3 buck used by the file share. Required when specifying a <span pulumi-lang-nodejs="`vpcEndpointDnsName`" pulumi-lang-dotnet="`VpcEndpointDnsName`" pulumi-lang-go="`vpcEndpointDnsName`" pulumi-lang-python="`vpc_endpoint_dns_name`" pulumi-lang-yaml="`vpcEndpointDnsName`" pulumi-lang-java="`vpcEndpointDnsName`">`vpc_endpoint_dns_name`</span>.
  late final Output<String?> bucketRegion;

  /// Refresh cache information. see <span pulumi-lang-nodejs="`cacheAttributes`" pulumi-lang-dotnet="`CacheAttributes`" pulumi-lang-go="`cacheAttributes`" pulumi-lang-python="`cache_attributes`" pulumi-lang-yaml="`cacheAttributes`" pulumi-lang-java="`cacheAttributes`">`cache_attributes`</span> Block for more details.
  late final Output<SmbFileShareCacheAttributes?> cacheAttributes;

  /// The case of an object name in an Amazon S3 bucket. For `ClientSpecified`, the client determines the case sensitivity. For `CaseSensitive`, the gateway determines the case sensitivity. The default value is `ClientSpecified`.
  late final Output<String?> caseSensitivity;

  /// The default [storage class](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-DefaultStorageClass) for objects put into an Amazon S3 bucket by the file gateway. Defaults to `S3_STANDARD`.
  late final Output<String?> defaultStorageClass;

  /// The name of the file share. Must be set if an S3 prefix name is set in <span pulumi-lang-nodejs="`locationArn`" pulumi-lang-dotnet="`LocationArn`" pulumi-lang-go="`locationArn`" pulumi-lang-python="`location_arn`" pulumi-lang-yaml="`locationArn`" pulumi-lang-java="`locationArn`">`location_arn`</span>.
  late final Output<String> fileShareName;

  /// ID of the SMB File Share.
  late final Output<String> fileshareId;

  /// Amazon Resource Name (ARN) of the file gateway.
  late final Output<String> gatewayArn;

  /// Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> guessMimeTypeEnabled;

  /// A list of users in the Active Directory that are not allowed to access the file share. Only valid if <span pulumi-lang-nodejs="`authentication`" pulumi-lang-dotnet="`Authentication`" pulumi-lang-go="`authentication`" pulumi-lang-python="`authentication`" pulumi-lang-yaml="`authentication`" pulumi-lang-java="`authentication`">`authentication`</span> is set to `ActiveDirectory`.
  late final Output<List<String>?> invalidUserLists;

  /// Boolean value if <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to use Amazon S3 server side encryption with your own AWS KMS key, or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to use a key managed by Amazon S3. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> kmsEncrypted;

  /// Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when <span pulumi-lang-nodejs="`kmsEncrypted`" pulumi-lang-dotnet="`KmsEncrypted`" pulumi-lang-go="`kmsEncrypted`" pulumi-lang-python="`kms_encrypted`" pulumi-lang-yaml="`kmsEncrypted`" pulumi-lang-java="`kmsEncrypted`">`kms_encrypted`</span> is true.
  late final Output<String?> kmsKeyArn;

  /// The ARN of the backed storage used for storing file data.
  late final Output<String> locationArn;

  /// The notification policy of the file share. For more information see the [AWS Documentation](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_CreateNFSFileShare.html#StorageGateway-CreateNFSFileShare-request-NotificationPolicy). Default value is `{}`.
  late final Output<String?> notificationPolicy;

  /// Access Control List permission for S3 objects. Defaults to <span pulumi-lang-nodejs="`private`" pulumi-lang-dotnet="`Private`" pulumi-lang-go="`private`" pulumi-lang-python="`private`" pulumi-lang-yaml="`private`" pulumi-lang-java="`private`">`private`</span>.
  late final Output<String?> objectAcl;

  /// Boolean to indicate Opportunistic lock (oplock) status. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> oplocksEnabled;

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

  /// Set this value to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to enable ACL (access control list) on the SMB fileshare. Set it to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to map file and directory permissions to the POSIX permissions. This setting applies only to `ActiveDirectory` authentication type.
  late final Output<bool?> smbAclEnabled;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// **Note:** If you have previously included a <span pulumi-lang-nodejs="`cacheAttributes`" pulumi-lang-dotnet="`CacheAttributes`" pulumi-lang-go="`cacheAttributes`" pulumi-lang-python="`cache_attributes`" pulumi-lang-yaml="`cacheAttributes`" pulumi-lang-java="`cacheAttributes`">`cache_attributes`</span> block in your configuration, removing it will not reset the refresh cache value and the previous value will remain. You must explicitly set a new value to change it.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A list of users in the Active Directory that are allowed to access the file share. If you need to specify an Active directory group, add '@' before the name of the group. It will be set on Allowed group in AWS console. Only valid if <span pulumi-lang-nodejs="`authentication`" pulumi-lang-dotnet="`Authentication`" pulumi-lang-go="`authentication`" pulumi-lang-python="`authentication`" pulumi-lang-yaml="`authentication`" pulumi-lang-java="`authentication`">`authentication`</span> is set to `ActiveDirectory`.
  late final Output<List<String>?> validUserLists;

  /// The DNS name of the VPC endpoint for S3 private link.
  late final Output<String?> vpcEndpointDnsName;

  SmbFileShare(
    String name, {
    SmbFileShareArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/smbFileShare:SmbFileShare',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessBasedEnumeration = Output.createUnknown<bool?>();
    this.adminUserLists = Output.createUnknown<List<String>?>();
    this.arn = Output.createUnknown<String>();
    this.auditDestinationArn = Output.createUnknown<String?>();
    this.authentication = Output.createUnknown<String?>();
    this.bucketRegion = Output.createUnknown<String?>();
    this.cacheAttributes = Output.createUnknown<SmbFileShareCacheAttributes?>();
    this.caseSensitivity = Output.createUnknown<String?>();
    this.defaultStorageClass = Output.createUnknown<String?>();
    this.fileShareName = Output.createUnknown<String>();
    this.fileshareId = Output.createUnknown<String>();
    this.gatewayArn = Output.createUnknown<String>();
    this.guessMimeTypeEnabled = Output.createUnknown<bool?>();
    this.invalidUserLists = Output.createUnknown<List<String>?>();
    this.kmsEncrypted = Output.createUnknown<bool?>();
    this.kmsKeyArn = Output.createUnknown<String?>();
    this.locationArn = Output.createUnknown<String>();
    this.notificationPolicy = Output.createUnknown<String?>();
    this.objectAcl = Output.createUnknown<String?>();
    this.oplocksEnabled = Output.createUnknown<bool>();
    this.path = Output.createUnknown<String>();
    this.readOnly = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.requesterPays = Output.createUnknown<bool?>();
    this.roleArn = Output.createUnknown<String>();
    this.smbAclEnabled = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.validUserLists = Output.createUnknown<List<String>?>();
    this.vpcEndpointDnsName = Output.createUnknown<String?>();
  }
}
