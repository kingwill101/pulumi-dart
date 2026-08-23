// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_association_cache_attributes.dart';

/// Input properties used for looking up and filtering FileSystemAssociation resources.
class FileSystemAssociationState {
  /// Amazon Resource Name (ARN) of the newly created file system association.
  final pulumi.Input<String>? arn;
  /// The Amazon Resource Name (ARN) of the storage used for the audit logs.
  final pulumi.Input<String>? auditDestinationArn;
  /// Refresh cache information. see Cache Attributes for more details.
  final pulumi.Input<FileSystemAssociationCacheAttributes>? cacheAttributes;
  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String>? gatewayArn;
  /// The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  final pulumi.Input<String>? locationArn;
  /// The password of the user credential.
  final pulumi.Input<String>? password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  final pulumi.Input<String>? username;

  /// Creates a new [FileSystemAssociationState].
  /// [arn] Amazon Resource Name (ARN) of the newly created file system association.
  /// [auditDestinationArn] The Amazon Resource Name (ARN) of the storage used for the audit logs.
  /// [cacheAttributes] Refresh cache information. see Cache Attributes for more details.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [locationArn] The Amazon Resource Name (ARN) of the Amazon FSx file system to associate with the FSx File Gateway.
  /// [password] The password of the user credential.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [username] The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  const FileSystemAssociationState({
    this.arn,
    this.auditDestinationArn,
    this.cacheAttributes,
    this.gatewayArn,
    this.locationArn,
    this.password,
    this.region,
    this.tags,
    this.tagsAll,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'auditDestinationArn': ?auditDestinationArn,
      'cacheAttributes': ?pulumi.Input.mapOptionalInputValue<FileSystemAssociationCacheAttributes, Map<String, dynamic>>(cacheAttributes, (value) => value.toMap()),
      'gatewayArn': ?gatewayArn,
      'locationArn': ?locationArn,
      'password': ?password,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'username': ?username,
    };
  }

  factory FileSystemAssociationState.fromMap(Map<String, dynamic> map) {
    return FileSystemAssociationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auditDestinationArn: (() { final guardedValue = map['auditDestinationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheAttributes: (() { final guardedValue = map['cacheAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileSystemAssociationCacheAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayArn: (() { final guardedValue = map['gatewayArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationArn: (() { final guardedValue = map['locationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
