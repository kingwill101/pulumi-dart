// ignore_for_file: unused_element, unnecessary_cast


/// Status information about a virtual machine.
class ComputeVmInstanceViewStatusResponse {
  /// Gets the status Code.
  final String? code;
  /// Gets the short localizable label for the status.
  final String? displayStatus;
  /// Gets the message associated with the status.
  final String? message;

  /// Creates a new [ComputeVmInstanceViewStatusResponse].
  /// [code] Gets the status Code.
  /// [displayStatus] Gets the short localizable label for the status.
  /// [message] Gets the message associated with the status.
  ComputeVmInstanceViewStatusResponse({
    this.code,
    this.displayStatus,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'displayStatus': ?displayStatus,
      'message': ?message,
    };
  }

  factory ComputeVmInstanceViewStatusResponse.fromMap(Map<String, dynamic> map) {
    return ComputeVmInstanceViewStatusResponse(
      code: map['code'] == null ? null : map['code'] as String,
      displayStatus: map['displayStatus'] == null ? null : map['displayStatus'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

