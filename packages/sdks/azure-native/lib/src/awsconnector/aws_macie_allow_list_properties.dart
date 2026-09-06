// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria.dart';
import 'tag.dart';

/// Definition of awsMacieAllowList
class AwsMacieAllowListProperties {
  /// AllowList ARN.
  final pulumi.Input<String?>? arn;
  /// AllowList criteria. The regex or s3 object to use for the AllowList.
  final pulumi.Input<Criteria?>? criteria;
  /// Description of AllowList.
  final pulumi.Input<String?>? description;
  /// AllowList ID.
  final pulumi.Input<String?>? id;
  /// Name of AllowList.
  final pulumi.Input<String?>? name;
  /// AllowList status. The status for the AllowList
  final pulumi.Input<dynamic>? status;
  /// A collection of tags associated with a resource
  final pulumi.Input<List<Tag>?>? tags;

  /// Creates a new [AwsMacieAllowListProperties].
  /// [arn] AllowList ARN.
  /// [criteria] AllowList criteria. The regex or s3 object to use for the AllowList.
  /// [description] Description of AllowList.
  /// [id] AllowList ID.
  /// [name] Name of AllowList.
  /// [status] AllowList status. The status for the AllowList
  /// [tags] A collection of tags associated with a resource
  const AwsMacieAllowListProperties({
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
      'criteria': ?pulumi.Input.mapOptionalInputValue<Criteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'status': ?status,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsMacieAllowListProperties.fromMap(Map<String, dynamic> map) {
    return AwsMacieAllowListProperties(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      criteria: (() { final guardedValue = map['criteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Criteria.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
