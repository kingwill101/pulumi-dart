// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDeveloper.
class GetDeveloperArgs {
  final pulumi.Input<String>? action;
  final pulumi.Input<String> developerId;
  final pulumi.Input<String> organizationId;

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
      action: pulumi.Input.asOptionalInput<String>(map['action']),
      developerId: pulumi.Input.asInput<String>(map['developerId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
