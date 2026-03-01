// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_response.dart';
import 'tag_response.dart';

/// Definition of awsMacieAllowList
class AwsMacieAllowListPropertiesResponse {
  /// AllowList ARN.
  final String? arn;
  /// AllowList criteria. The regex or s3 object to use for the AllowList.
  final CriteriaResponse? criteria;
  /// Description of AllowList.
  final String? description;
  /// AllowList ID.
  final String? id;
  /// Name of AllowList.
  final String? name;
  /// AllowList status. The status for the AllowList
  final String? status;
  /// A collection of tags associated with a resource
  final List<TagResponse>? tags;

  /// Creates a new [AwsMacieAllowListPropertiesResponse].
  /// [arn] AllowList ARN.
  /// [criteria] AllowList criteria. The regex or s3 object to use for the AllowList.
  /// [description] Description of AllowList.
  /// [id] AllowList ID.
  /// [name] Name of AllowList.
  /// [status] AllowList status. The status for the AllowList
  /// [tags] A collection of tags associated with a resource
  AwsMacieAllowListPropertiesResponse({
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
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsMacieAllowListPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsMacieAllowListPropertiesResponse(
      arn: map['arn'] == null ? null : map['arn'] as String,
      criteria: map['criteria'] == null ? null : CriteriaResponse.fromMap((map['criteria'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

