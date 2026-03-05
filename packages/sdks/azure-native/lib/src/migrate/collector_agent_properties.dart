// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_body_agent_spn_properties.dart';

class CollectorAgentProperties {
  final pulumi.Input<CollectorBodyAgentSpnProperties>? spnDetails;

  /// Creates a new [CollectorAgentProperties].
  /// [spnDetails] Optional.
  CollectorAgentProperties({
    this.spnDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spnDetails': ?pulumi.Input.mapOptionalInputValue<CollectorBodyAgentSpnProperties, Map<String, dynamic>>(spnDetails, (value) => value.toMap()),
    };
  }

  factory CollectorAgentProperties.fromMap(Map<String, dynamic> map) {
    return CollectorAgentProperties(
      spnDetails: (() { final guardedValue = map['spnDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectorBodyAgentSpnProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

