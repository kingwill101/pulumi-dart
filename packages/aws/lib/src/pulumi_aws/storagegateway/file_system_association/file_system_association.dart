import 'package:pulumi/pulumi.dart';
import '../file_system_association_cache_attributes/file_system_association_cache_attributes.dart';
import 'file_system_association_args.dart';

/// Associate an Amazon FSx file system with the FSx File Gateway. After the association process is complete, the file shares on the Amazon FSx file system are available for access through the gateway. This operation only supports the FSx File Gateway type.
///
/// [FSx File Gateway requirements](https://docs.aws.amazon.com/filegateway/latest/filefsxw/Requirements.html).
///
/// ## Example Usage
///
///
///
/// ## Required Services Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.FileSystemAssociation` using the FSx file system association Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/fileSystemAssociation:FileSystemAssociation example arn:aws:storagegateway:us-east-1:123456789012:fs-association/fsa-0DA347732FDB40125
/// ```
class FileSystemAssociation extends CustomResource {
  /// Amazon Resource Name (ARN) of the newly created file system association.
  late final Output<String> arn;

  /// The Amazon Resource Name (ARN) of the storage used for the audit logs.
  late final Output<String?> auditDestinationArn;

  /// Refresh cache information. see Cache Attributes for more details.
  late final Output<FileSystemAssociationCacheAttributes?> cacheAttributes;

  /// The Amazon Resource Name (ARN) of the gateway.
  late final Output<String> gatewayArn;

  /// The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  late final Output<String> locationArn;

  /// The password of the user credential.
  late final Output<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  late final Output<String> username;

  FileSystemAssociation(
    String name, {
    FileSystemAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/fileSystemAssociation:FileSystemAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    this.cacheAttributes =
        registerOutput<FileSystemAssociationCacheAttributes?>(
            'cacheAttributes');
    this.gatewayArn = registerOutput<String>('gatewayArn');
    this.locationArn = registerOutput<String>('locationArn');
    this.password = registerOutput<String>('password');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.username = registerOutput<String>('username');
  }
}
