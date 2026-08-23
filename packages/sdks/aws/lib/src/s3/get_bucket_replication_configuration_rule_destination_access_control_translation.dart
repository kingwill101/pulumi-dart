// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation {
  /// Replica ownership.
  final pulumi.Input<String> owner;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation].
  /// [owner] Replica ownership.
  const GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation({
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner': owner,
    };
  }

  factory GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationAccessControlTranslation(
      owner: pulumi.Input.fromValue(map['owner'] as String),
    );
  }
}
