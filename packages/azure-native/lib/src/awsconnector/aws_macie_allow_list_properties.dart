// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria.dart';
import 'tag.dart';

/// Definition of awsMacieAllowList
class AwsMacieAllowListProperties {
  /// AllowList ARN.
  final String? arn;
  /// AllowList criteria. The regex or s3 object to use for the AllowList.
  final Criteria? criteria;
  /// Description of AllowList.
  final String? description;
  /// AllowList ID.
  final String? id;
  /// Name of AllowList.
  final String? name;
  /// AllowList status. The status for the AllowList
  final String? status;
  /// A collection of tags associated with a resource
  final List<Tag>? tags;

  /// Creates a new [AwsMacieAllowListProperties].
  /// [arn] AllowList ARN.
  /// [criteria] AllowList criteria. The regex or s3 object to use for the AllowList.
  /// [description] Description of AllowList.
  /// [id] AllowList ID.
  /// [name] Name of AllowList.
  /// [status] AllowList status. The status for the AllowList
  /// [tags] A collection of tags associated with a resource
  AwsMacieAllowListProperties({
    this.arn,
    this.criteria,
    this.description,
    this.id,
    this.name,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'criteria': ?criteria == null ? null : criteria!.toMap(),
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'status': ?status,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsMacieAllowListProperties.fromMap(Map<String, dynamic> map) {
    return AwsMacieAllowListProperties(
      arn: map['arn'] == null ? null : map['arn'] as String,
      criteria: map['criteria'] == null ? null : Criteria.fromMap((map['criteria'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

