// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../posture_policy_set/posture_policy_set.dart';

/// The set of arguments for Posture.
class PostureArgs {
  /// Description of the posture.
  final Input<String>? description;

  /// Location of the resource, eg: global.
  final Input<String> location;

  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final Input<String> parent;

  /// List of policy sets for the posture.
  /// Structure is documented below.
  final Input<List<PosturePolicySet>> policySets;

  /// Id of the posture. It is an immutable field.
  final Input<String> postureId;

  /// State of the posture. Update to state field should not be triggered along with
  /// with other field updates.
  /// Possible values are: `DEPRECATED`, `DRAFT`, `ACTIVE`.
  final Input<String> state;

  PostureArgs({
    this.description,
    required this.location,
    required this.parent,
    required this.policySets,
    required this.postureId,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] = location;
    map['parent'] = parent;
    map['policySets'] =
        Input.mapInputValue<List<PosturePolicySet>, List<Map<String, dynamic>>>(
            policySets,
            (value) => Input.encodeList<PosturePolicySet, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['postureId'] = postureId;
    map['state'] = state;
    return map;
  }

  factory PostureArgs.fromMap(Map<String, dynamic> map) {
    return PostureArgs(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asInput<String>(map['location']),
      parent: Input.asInput<String>(map['parent']),
      policySets: Input.asInput<List<PosturePolicySet>>(map['policySets']),
      postureId: Input.asInput<String>(map['postureId']),
      state: Input.asInput<String>(map['state']),
    );
  }
}
