// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resize_request_status_last_attempt_error_error_error_detail_error_info/resize_request_status_last_attempt_error_error_error_detail_error_info.dart';
import '../resize_request_status_last_attempt_error_error_error_detail_help/resize_request_status_last_attempt_error_error_error_detail_help.dart';
import '../resize_request_status_last_attempt_error_error_error_detail_localized_message/resize_request_status_last_attempt_error_error_error_detail_localized_message.dart';
import '../resize_request_status_last_attempt_error_error_error_detail_quota_info/resize_request_status_last_attempt_error_error_error_detail_quota_info.dart';

class ResizeRequestStatusLastAttemptErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>?
      errorInfos;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>? helps;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<
          ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>?
      localizedMessages;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>?
      quotaInfos;

  ResizeRequestStatusLastAttemptErrorErrorErrorDetail({
    this.errorInfos,
    this.helps,
    this.localizedMessages,
    this.quotaInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorInfosValue = errorInfos;
    if (errorInfosValue != null) {
      map['errorInfos'] = pulumi.Input.encodeList<
          ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo,
          Map<String, dynamic>>(errorInfosValue, (value) => value.toMap());
    }
    final helpsValue = helps;
    if (helpsValue != null) {
      map['helps'] = pulumi.Input.encodeList<
          ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp,
          Map<String, dynamic>>(helpsValue, (value) => value.toMap());
    }
    final localizedMessagesValue = localizedMessages;
    if (localizedMessagesValue != null) {
      map['localizedMessages'] = pulumi.Input.encodeList<
          ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage,
          Map<String,
              dynamic>>(localizedMessagesValue, (value) => value.toMap());
    }
    final quotaInfosValue = quotaInfos;
    if (quotaInfosValue != null) {
      map['quotaInfos'] = pulumi.Input.encodeList<
          ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo,
          Map<String, dynamic>>(quotaInfosValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResizeRequestStatusLastAttemptErrorErrorErrorDetail.fromMap(
      Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttemptErrorErrorErrorDetail(
      errorInfos: map['errorInfos'] == null
          ? null
          : pulumi.Input.decodeList<
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>(
              map['errorInfos'],
              (value) =>
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo
                      .fromMap((value as Map).cast<String, dynamic>())),
      helps: map['helps'] == null
          ? null
          : pulumi.Input.decodeList<
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>(
              map['helps'],
              (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp
                  .fromMap((value as Map).cast<String, dynamic>())),
      localizedMessages: map['localizedMessages'] == null
          ? null
          : pulumi.Input.decodeList<
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>(
              map['localizedMessages'],
              (value) =>
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage
                      .fromMap((value as Map).cast<String, dynamic>())),
      quotaInfos: map['quotaInfos'] == null
          ? null
          : pulumi.Input.decodeList<
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>(
              map['quotaInfos'],
              (value) =>
                  ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
