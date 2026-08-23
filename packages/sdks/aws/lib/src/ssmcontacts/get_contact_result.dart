// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContact.
class GetContactResult {
  /// A unique and identifiable alias of the contact or escalation plan.
  final String alias;
  final String arn;
  /// Full friendly name of the contact or escalation plan.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// Map of tags to assign to the resource.
  final Map<String, String> tags;
  /// The type of contact engaged. A single contact is type `PERSONAL` and an escalation plan is type `ESCALATION`.
  final String type;

  /// Creates a new [GetContactResult].
  /// [alias] A unique and identifiable alias of the contact or escalation plan.
  /// [arn] Required.
  /// [displayName] Full friendly name of the contact or escalation plan.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [tags] Map of tags to assign to the resource.
  /// [type] The type of contact engaged. A single contact is type `PERSONAL` and an escalation plan is type `ESCALATION`.
  const GetContactResult({
    required this.alias,
    required this.arn,
    required this.displayName,
    required this.id,
    required this.region,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'arn': arn,
      'displayName': displayName,
      'id': id,
      'region': region,
      'tags': tags,
      'type': type,
    };
  }

  factory GetContactResult.fromMap(Map<String, dynamic> map) {
    return GetContactResult(
      alias: map['alias'] as String,
      arn: map['arn'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
