// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_response.dart';
import 'tag_response.dart';

/// Definition of awsMacieAllowList
class AwsMacieAllowListPropertiesResponse {
  /// AllowList ARN.
  final pulumi.Input<String>? arn;
  /// AllowList criteria. The regex or s3 object to use for the AllowList.
  final pulumi.Input<CriteriaResponse>? criteria;
  /// Description of AllowList.
  final pulumi.Input<String>? description;
  /// AllowList ID.
  final pulumi.Input<String>? id;
  /// Name of AllowList.
  final pulumi.Input<String>? name;
  /// AllowList status. The status for the AllowList
  final pulumi.Input<String>? status;
  /// A collection of tags associated with a resource
  final pulumi.Input<List<TagResponse>>? tags;

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
      'criteria': ?pulumi.Input.mapOptionalInputValue<CriteriaResponse, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'status': ?status,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsMacieAllowListPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsMacieAllowListPropertiesResponse(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      criteria: (() { final guardedValue = map['criteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CriteriaResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

