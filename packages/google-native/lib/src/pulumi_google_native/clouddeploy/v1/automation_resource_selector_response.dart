// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_attribute_response.dart';

/// AutomationResourceSelector contains the information to select the resources to which an Automation is going to be applied.
class AutomationResourceSelectorResponse {
  /// Contains attributes about a target.
  final List<TargetAttributeResponse> targets;

  AutomationResourceSelectorResponse({
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targets'] =
        pulumi.Input.encodeList<TargetAttributeResponse, Map<String, dynamic>>(
            targets, (value) => value.toMap());
    return map;
  }

  factory AutomationResourceSelectorResponse.fromMap(Map<String, dynamic> map) {
    return AutomationResourceSelectorResponse(
      targets: pulumi.Input.decodeList<TargetAttributeResponse>(
          map['targets'],
          (value) => TargetAttributeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
