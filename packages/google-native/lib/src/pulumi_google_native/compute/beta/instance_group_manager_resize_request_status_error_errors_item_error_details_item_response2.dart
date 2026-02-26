// ignore_for_file: unused_element, unnecessary_cast

import 'error_info_response2.dart';
import 'help_response2.dart';
import 'localized_message_response2.dart';
import 'quota_exceeded_info_response2.dart';

class InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse2 {
  final ErrorInfoResponse2 errorInfo;
  final HelpResponse2 help;
  final LocalizedMessageResponse2 localizedMessage;
  final QuotaExceededInfoResponse2 quotaInfo;

  InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse2({
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

  factory InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse2(
      errorInfo: ErrorInfoResponse2.fromMap(
          (map['errorInfo'] as Map).cast<String, dynamic>()),
      help: HelpResponse2.fromMap((map['help'] as Map).cast<String, dynamic>()),
      localizedMessage: LocalizedMessageResponse2.fromMap(
          (map['localizedMessage'] as Map).cast<String, dynamic>()),
      quotaInfo: QuotaExceededInfoResponse2.fromMap(
          (map['quotaInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
