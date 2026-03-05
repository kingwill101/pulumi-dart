// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'line_registration.dart';

/// The parameters to provide for the Line channel.
class LineChannelProperties {
  /// The list of line channel registrations
  final pulumi.Input<List<LineRegistration>> lineRegistrations;

  /// Creates a new [LineChannelProperties].
  /// [lineRegistrations] The list of line channel registrations
  LineChannelProperties({
    required this.lineRegistrations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lineRegistrations': pulumi.Input.mapInputValue<List<LineRegistration>, List<Map<String, dynamic>>>(lineRegistrations, (value) => pulumi.Input.encodeList<LineRegistration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LineChannelProperties.fromMap(Map<String, dynamic> map) {
    return LineChannelProperties(
      lineRegistrations: pulumi.Input.fromValue(pulumi.Input.decodeList<LineRegistration>(map['lineRegistrations']!, (value) => LineRegistration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

