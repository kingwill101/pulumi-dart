// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'line_registration.dart';

/// The parameters to provide for the Line channel.
class LineChannelProperties {
  /// The list of line channel registrations
  final List<LineRegistration> lineRegistrations;

  /// Creates a new [LineChannelProperties].
  /// [lineRegistrations] The list of line channel registrations
  LineChannelProperties({
    required this.lineRegistrations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lineRegistrations': pulumi.Input.encodeList<LineRegistration, Map<String, dynamic>>(lineRegistrations, (value) => value.toMap()),
    };
  }

  factory LineChannelProperties.fromMap(Map<String, dynamic> map) {
    return LineChannelProperties(
      lineRegistrations: pulumi.Input.decodeList<LineRegistration>(map['lineRegistrations'], (value) => LineRegistration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

