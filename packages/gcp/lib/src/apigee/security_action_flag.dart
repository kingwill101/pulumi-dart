// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_action_flag_header.dart';

class SecurityActionFlag {
  /// A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction.
  /// Limit 5 headers per SecurityAction.
  /// At least one is mandatory.
  /// Structure is documented below.
  final List<SecurityActionFlagHeader>? headers;

  /// Creates a new [SecurityActionFlag].
  /// [headers] A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction.
  SecurityActionFlag({this.headers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null
          ? null
          : pulumi.Input.encodeList<
              SecurityActionFlagHeader,
              Map<String, dynamic>
            >(headers!, (value) => value.toMap()),
    };
  }

  factory SecurityActionFlag.fromMap(Map<String, dynamic> map) {
    return SecurityActionFlag(
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<SecurityActionFlagHeader>(
              map['headers'],
              (value) => SecurityActionFlagHeader.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
