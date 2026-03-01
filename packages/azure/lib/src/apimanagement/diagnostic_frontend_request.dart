// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostic_frontend_request_data_masking.dart';

class DiagnosticFrontendRequest {
  /// Number of payload bytes to log (up to 8192).
  final int? bodyBytes;
  /// A `data_masking` block as defined below.
  final DiagnosticFrontendRequestDataMasking? dataMasking;
  /// Specifies a list of headers to log.
  final List<String>? headersToLogs;

  /// Creates a new [DiagnosticFrontendRequest].
  /// [bodyBytes] Number of payload bytes to log (up to 8192).
  /// [dataMasking] A `data_masking` block as defined below.
  /// [headersToLogs] Specifies a list of headers to log.
  DiagnosticFrontendRequest({
    this.bodyBytes,
    this.dataMasking,
    this.headersToLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyBytes': ?bodyBytes,
      'dataMasking': ?dataMasking == null ? null : dataMasking!.toMap(),
      'headersToLogs': ?headersToLogs,
    };
  }

  factory DiagnosticFrontendRequest.fromMap(Map<String, dynamic> map) {
    return DiagnosticFrontendRequest(
      bodyBytes: map['bodyBytes'] == null ? null : map['bodyBytes'] as int,
      dataMasking: map['dataMasking'] == null ? null : DiagnosticFrontendRequestDataMasking.fromMap((map['dataMasking'] as Map).cast<String, dynamic>()),
      headersToLogs: map['headersToLogs'] == null ? null : (map['headersToLogs'] as List).cast<String>(),
    );
  }
}

