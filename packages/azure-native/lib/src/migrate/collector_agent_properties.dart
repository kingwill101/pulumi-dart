// ignore_for_file: unused_element, unnecessary_cast

import 'collector_body_agent_spn_properties.dart';

class CollectorAgentProperties {
  final CollectorBodyAgentSpnProperties? spnDetails;

  /// Creates a new [CollectorAgentProperties].
  /// [spnDetails] Optional.
  CollectorAgentProperties({
    this.spnDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spnDetails': ?spnDetails == null ? null : spnDetails!.toMap(),
    };
  }

  factory CollectorAgentProperties.fromMap(Map<String, dynamic> map) {
    return CollectorAgentProperties(
      spnDetails: map['spnDetails'] == null ? null : CollectorBodyAgentSpnProperties.fromMap((map['spnDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

