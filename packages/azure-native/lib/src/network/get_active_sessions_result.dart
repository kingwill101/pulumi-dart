// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_active_session_response.dart';

/// Result data returned by getActiveSessions.
class GetActiveSessionsResult {
  /// The URL to get the next set of results.
  final String? nextLink;
  /// List of active sessions on the bastion.
  final List<BastionActiveSessionResponse>? value;

  /// Creates a new [GetActiveSessionsResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] List of active sessions on the bastion.
  GetActiveSessionsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<BastionActiveSessionResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory GetActiveSessionsResult.fromMap(Map<String, dynamic> map) {
    return GetActiveSessionsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<BastionActiveSessionResponse>(map['value'], (value) => BastionActiveSessionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

