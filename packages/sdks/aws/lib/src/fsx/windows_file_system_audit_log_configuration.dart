// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFileSystemAuditLogConfiguration {
  /// ARN for the destination of the audit logs. The destination can be any Amazon CloudWatch Logs log group ARN or Amazon Kinesis Data Firehose delivery stream ARN. Can be specified when `fileAccessAuditLogLevel` and `fileShareAccessAuditLogLevel` are not set to `DISABLED`. The name of the Amazon CloudWatch Logs log group must begin with the `/aws/fsx` prefix. The name of the Amazon Kinesis Data Firehouse delivery stream must begin with the `aws-fsx` prefix. If you do not provide a destination in `auditLogDestionation`, Amazon FSx will create and use a log stream in the CloudWatch Logs /aws/fsx/windows log group.
  final pulumi.Input<String?>? auditLogDestination;
  /// Sets which attempt type is logged by Amazon FSx for file and folder accesses. Valid values are `SUCCESS_ONLY`, `FAILURE_ONLY`, `SUCCESS_AND_FAILURE`, and `DISABLED`. Default value is `DISABLED`.
  final pulumi.Input<String?>? fileAccessAuditLogLevel;
  /// Sets which attempt type is logged by Amazon FSx for file share accesses. Valid values are `SUCCESS_ONLY`, `FAILURE_ONLY`, `SUCCESS_AND_FAILURE`, and `DISABLED`. Default value is `DISABLED`.
  final pulumi.Input<String?>? fileShareAccessAuditLogLevel;

  /// Creates a new [WindowsFileSystemAuditLogConfiguration].
  /// [auditLogDestination] ARN for the destination of the audit logs. The destination can be any Amazon CloudWatch Logs log group ARN or Amazon Kinesis Data Firehose delivery stream ARN. Can be specified when `fileAccessAuditLogLevel` and `fileShareAccessAuditLogLevel` are not set to `DISABLED`. The name of the Amazon CloudWatch Logs log group must begin with the `/aws/fsx` prefix. The name of the Amazon Kinesis Data Firehouse delivery stream must begin with the `aws-fsx` prefix. If you do not provide a destination in `auditLogDestionation`, Amazon FSx will create and use a log stream in the CloudWatch Logs /aws/fsx/windows log group.
  /// [fileAccessAuditLogLevel] Sets which attempt type is logged by Amazon FSx for file and folder accesses. Valid values are `SUCCESS_ONLY`, `FAILURE_ONLY`, `SUCCESS_AND_FAILURE`, and `DISABLED`. Default value is `DISABLED`.
  /// [fileShareAccessAuditLogLevel] Sets which attempt type is logged by Amazon FSx for file share accesses. Valid values are `SUCCESS_ONLY`, `FAILURE_ONLY`, `SUCCESS_AND_FAILURE`, and `DISABLED`. Default value is `DISABLED`.
  const WindowsFileSystemAuditLogConfiguration({
    this.auditLogDestination,
    this.fileAccessAuditLogLevel,
    this.fileShareAccessAuditLogLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogDestination': ?auditLogDestination,
      'fileAccessAuditLogLevel': ?fileAccessAuditLogLevel,
      'fileShareAccessAuditLogLevel': ?fileShareAccessAuditLogLevel,
    };
  }

  factory WindowsFileSystemAuditLogConfiguration.fromMap(Map<String, dynamic> map) {
    return WindowsFileSystemAuditLogConfiguration(
      auditLogDestination: (() { final guardedValue = map['auditLogDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileAccessAuditLogLevel: (() { final guardedValue = map['fileAccessAuditLogLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileShareAccessAuditLogLevel: (() { final guardedValue = map['fileShareAccessAuditLogLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
