// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_association_cache_attributes.dart';

/// {@template pulumi_storagegateway_file_system_association_file_system_association_args_doc}
/// The set of arguments for FileSystemAssociation.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_file_system_association_file_system_association_args_doc}
class FileSystemAssociationArgs {
  /// The Amazon Resource Name (ARN) of the storage used for the audit logs.
  final pulumi.Input<String>? auditDestinationArn;

  /// Refresh cache information. see Cache Attributes for more details.
  final pulumi.Input<FileSystemAssociationCacheAttributes>? cacheAttributes;

  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;

  /// The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  final pulumi.Input<String> locationArn;

  /// The password of the user credential.
  final pulumi.Input<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  final pulumi.Input<String> username;

  /// Creates a new [FileSystemAssociationArgs].
  /// [auditDestinationArn] The Amazon Resource Name (ARN) of the storage used for the audit logs.
  /// [cacheAttributes] Refresh cache information. see Cache Attributes for more details.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [locationArn] The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  /// [password] The password of the user credential.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [username] The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  FileSystemAssociationArgs({
    this.auditDestinationArn,
    this.cacheAttributes,
    required this.gatewayArn,
    required this.locationArn,
    required this.password,
    this.region,
    this.tags,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditDestinationArn': ?auditDestinationArn,
      'cacheAttributes':
          ?pulumi.Input.mapOptionalInputValue<
            FileSystemAssociationCacheAttributes,
            Map<String, dynamic>
          >(cacheAttributes, (value) => value.toMap()),
      'gatewayArn': gatewayArn,
      'locationArn': locationArn,
      'password': password,
      'region': ?region,
      'tags': ?tags,
      'username': username,
    };
  }

  factory FileSystemAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FileSystemAssociationArgs(
      auditDestinationArn: (() {
        final guardedValue = map['auditDestinationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cacheAttributes: (() {
        final guardedValue = map['cacheAttributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FileSystemAssociationCacheAttributes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gatewayArn: pulumi.Input.fromValue(map['gatewayArn'] as String),
      locationArn: pulumi.Input.fromValue(map['locationArn'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
