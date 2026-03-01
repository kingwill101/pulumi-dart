// ignore_for_file: unused_element, unnecessary_cast

import 'instance_view_status_response.dart';

/// The instance view of a virtual machine boot diagnostics.
class BootDiagnosticsInstanceViewResponse {
  /// The console screenshot blob URI. **Note:** This will **not** be set if boot diagnostics is currently enabled with managed storage.
  final String consoleScreenshotBlobUri;
  /// The serial console log blob Uri. **Note:** This will **not** be set if boot diagnostics is currently enabled with managed storage.
  final String serialConsoleLogBlobUri;
  /// The boot diagnostics status information for the VM. **Note:** It will be set only if there are errors encountered in enabling boot diagnostics.
  final InstanceViewStatusResponse status;

  /// Creates a new [BootDiagnosticsInstanceViewResponse].
  /// [consoleScreenshotBlobUri] The console screenshot blob URI. **Note:** This will **not** be set if boot diagnostics is currently enabled with managed storage.
  /// [serialConsoleLogBlobUri] The serial console log blob Uri. **Note:** This will **not** be set if boot diagnostics is currently enabled with managed storage.
  /// [status] The boot diagnostics status information for the VM. **Note:** It will be set only if there are errors encountered in enabling boot diagnostics.
  BootDiagnosticsInstanceViewResponse({
    required this.consoleScreenshotBlobUri,
    required this.serialConsoleLogBlobUri,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleScreenshotBlobUri': consoleScreenshotBlobUri,
      'serialConsoleLogBlobUri': serialConsoleLogBlobUri,
      'status': status.toMap(),
    };
  }

  factory BootDiagnosticsInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return BootDiagnosticsInstanceViewResponse(
      consoleScreenshotBlobUri: map['consoleScreenshotBlobUri'] as String,
      serialConsoleLogBlobUri: map['serialConsoleLogBlobUri'] as String,
      status: InstanceViewStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

