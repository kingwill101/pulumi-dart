// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getInstance.
class GetInstanceBigtableadminV2Result {
  /// A commit timestamp representing when this Instance was created. For instances created before this field was added (August 2021), this value is `seconds: 0, nanos: 1`.
  final String createTime;

  /// The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
  final String displayName;

  /// Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: `\p{Ll}\p{Lo}{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
  final Map<String, String> labels;

  /// The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.
  final String name;

  /// Reserved for future use.
  final bool satisfiesPzs;

  /// The current state of the instance.
  final String state;

  /// The type of the instance. Defaults to `PRODUCTION`.
  final String type;

  GetInstanceBigtableadminV2Result({
    required this.createTime,
    required this.displayName,
    required this.labels,
    required this.name,
    required this.satisfiesPzs,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['name'] = name;
    map['satisfiesPzs'] = satisfiesPzs;
    map['state'] = state;
    map['type'] = type;
    return map;
  }

  factory GetInstanceBigtableadminV2Result.fromMap(Map<String, dynamic> map) {
    return GetInstanceBigtableadminV2Result(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
