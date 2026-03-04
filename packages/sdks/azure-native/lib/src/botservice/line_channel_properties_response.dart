// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'line_registration_response.dart';

/// The parameters to provide for the Line channel.
class LineChannelPropertiesResponse {
  /// Callback Url to enter in line registration.
  final pulumi.Input<String> callbackUrl;

  /// Whether this channel is validated for the bot
  final pulumi.Input<bool> isValidated;

  /// The list of line channel registrations
  final pulumi.Input<List<LineRegistrationResponse>> lineRegistrations;

  /// Creates a new [LineChannelPropertiesResponse].
  /// [callbackUrl] Callback Url to enter in line registration.
  /// [isValidated] Whether this channel is validated for the bot
  /// [lineRegistrations] The list of line channel registrations
  LineChannelPropertiesResponse({
    required this.callbackUrl,
    required this.isValidated,
    required this.lineRegistrations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackUrl': callbackUrl,
      'isValidated': isValidated,
      'lineRegistrations':
          pulumi.Input.mapInputValue<
            List<LineRegistrationResponse>,
            List<Map<String, dynamic>>
          >(
            lineRegistrations,
            (value) =>
                pulumi.Input.encodeList<
                  LineRegistrationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory LineChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LineChannelPropertiesResponse(
      callbackUrl: pulumi.Input.fromValue(map['callbackUrl'] as String),
      isValidated: pulumi.Input.fromValue(map['isValidated'] as bool),
      lineRegistrations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<LineRegistrationResponse>(
          map['lineRegistrations']!,
          (value) => LineRegistrationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
