// ignore_for_file: unused_element, unnecessary_cast

import 'error_info_response.dart';
import 'help_response.dart';
import 'localized_message_response.dart';
import 'quota_exceeded_info_response.dart';

class InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse {
  final ErrorInfoResponse errorInfo;
  final HelpResponse help;
  final LocalizedMessageResponse localizedMessage;
  final QuotaExceededInfoResponse quotaInfo;

  InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse({
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

  factory InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse(
      errorInfo: ErrorInfoResponse.fromMap(
          (map['errorInfo'] as Map).cast<String, dynamic>()),
      help: HelpResponse.fromMap((map['help'] as Map).cast<String, dynamic>()),
      localizedMessage: LocalizedMessageResponse.fromMap(
          (map['localizedMessage'] as Map).cast<String, dynamic>()),
      quotaInfo: QuotaExceededInfoResponse.fromMap(
          (map['quotaInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
