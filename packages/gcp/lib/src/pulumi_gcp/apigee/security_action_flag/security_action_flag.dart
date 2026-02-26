// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../security_action_flag_header/security_action_flag_header.dart';

class SecurityActionFlag {
  /// A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction.
  /// Limit 5 headers per SecurityAction.
  /// At least one is mandatory.
  /// Structure is documented below.
  final List<SecurityActionFlagHeader>? headers;

  SecurityActionFlag({
    this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] =
          Input.encodeList<SecurityActionFlagHeader, Map<String, dynamic>>(
              headersValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityActionFlag.fromMap(Map<String, dynamic> map) {
    return SecurityActionFlag(
      headers: map['headers'] == null
          ? null
          : Input.decodeList<SecurityActionFlagHeader>(
              map['headers'],
              (value) => SecurityActionFlagHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
