// ignore_for_file: unused_element, unnecessary_cast

import 'error_info_response_compute_beta.dart';
import 'help_response_compute_beta.dart';
import 'localized_message_response_compute_beta.dart';
import 'quota_exceeded_info_response_compute_beta.dart';

class InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponseComputeBeta {
  final ErrorInfoResponseComputeBeta errorInfo;
  final HelpResponseComputeBeta help;
  final LocalizedMessageResponseComputeBeta localizedMessage;
  final QuotaExceededInfoResponseComputeBeta quotaInfo;

  InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponseComputeBeta({
    required this.errorInfo,
    required this.help,
    required this.localizedMessage,
    required this.quotaInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errorInfo'] = errorInfo.toMap();
    map['help'] = help.toMap();
    map['localizedMessage'] = localizedMessage.toMap();
    map['quotaInfo'] = quotaInfo.toMap();
    return map;
  }

  factory InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponseComputeBeta(
      errorInfo: ErrorInfoResponseComputeBeta.fromMap(
          (map['errorInfo'] as Map).cast<String, dynamic>()),
      help: HelpResponseComputeBeta.fromMap(
          (map['help'] as Map).cast<String, dynamic>()),
      localizedMessage: LocalizedMessageResponseComputeBeta.fromMap(
          (map['localizedMessage'] as Map).cast<String, dynamic>()),
      quotaInfo: QuotaExceededInfoResponseComputeBeta.fromMap(
          (map['quotaInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
