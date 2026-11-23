// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_conditions.dart';

class TestTraffic {
  /// This is only applicable when using blue/green, canary, or linear deployments. When those
  /// deployment strategies are used you can provide these match conditions to route certain requests
  /// to the new version immediately.
  ///
  /// When a new version is deployed using blue/green, canary, or linear deployments ECS starts by
  /// first shifting 100% of traffic matching these conditions to the new version. Once that shift is
  /// complete ECS then begins the production traffic shift. Using this `testTraffic` configuration
  /// can allow you to accomplish things like:
  ///
  /// - Automated smoke tests before shifting production traffic
  /// - Manual inspection before shifting production traffic
  /// - Targeted checks during a canary/linear deployment.
  ///
  /// The test rule uses the priority immediately before the production rule. That priority must be
  /// available, and the production priority must be greater than 1.
  final pulumi.Input<ListenerConditions> match;

  /// Creates a new [TestTraffic].
  /// [match] This is only applicable when using blue/green, canary, or linear deployments. When those
  const TestTraffic({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': pulumi.Input.mapInputValue<ListenerConditions, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory TestTraffic.fromMap(Map<String, dynamic> map) {
    return TestTraffic(
      match: pulumi.Input.fromValue(ListenerConditions.fromMap((map['match']! as Map).cast<String, dynamic>())),
    );
  }
}
