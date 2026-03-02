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
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [username] The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  FileSystemAssociationState({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      auditDestinationArn: map['auditDestinationArn'] == null ? null : ((map['auditDestinationArn'] as String).input()).input(),
      cacheAttributes: map['cacheAttributes'] == null ? null : ((FileSystemAssociationCacheAttributes.fromMap((map['cacheAttributes']! as Map).cast<String, dynamic>())).input()).input(),
      gatewayArn: map['gatewayArn'] == null ? null : ((map['gatewayArn'] as String).input()).input(),
      locationArn: map['locationArn'] == null ? null : ((map['locationArn'] as String).input()).input(),
      password: map['password'] == null ? null : ((map['password'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      username: map['username'] == null ? null : ((map['username'] as String).input()).input(),
    );
  }
}

