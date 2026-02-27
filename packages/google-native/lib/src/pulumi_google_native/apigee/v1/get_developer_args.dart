// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDeveloper.
class GetDeveloperArgs {
  final Input<String>? action;
  final Input<String> developerId;
  final Input<String> organizationId;

  GetDeveloperArgs({
    this.action,
    required this.developerId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    map['developerId'] = developerId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetDeveloperArgs.fromMap(Map<String, dynamic> map) {
    return GetDeveloperArgs(
      action: Input.asOptionalInput<String>(map['action']),
      developerId: Input.asInput<String>(map['developerId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
