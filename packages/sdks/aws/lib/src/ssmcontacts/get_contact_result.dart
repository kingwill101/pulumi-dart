// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContact.
class GetContactResult {
  /// A unique and identifiable alias of the contact or escalation plan.
  final String? alias;
  final String? arn;
  /// Full friendly name of the contact or escalation plan.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Map of tags to assign to the resource.
  final Map<String, String>? tags;
  /// The type of contact engaged. A single contact is type `PERSONAL` and an escalation plan is type `ESCALATION`.
  final String? type;

  /// Creates a new [GetContactResult].
  /// [alias] A unique and identifiable alias of the contact or escalation plan.
  /// [arn] Optional.
  /// [displayName] Full friendly name of the contact or escalation plan.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [tags] Map of tags to assign to the resource.
  /// [type] The type of contact engaged. A single contact is type `PERSONAL` and an escalation plan is type `ESCALATION`.
  const GetContactResult({
    this.alias,
    this.arn,
    this.displayName,
    this.id,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'arn': ?arn,
      'displayName': ?displayName,
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetContactResult.fromMap(Map<String, dynamic> map) {
    return GetContactResult(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
