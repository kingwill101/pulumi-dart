// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resize_request_status_error_error_error_detail_error_info/resize_request_status_error_error_error_detail_error_info.dart';
import '../resize_request_status_error_error_error_detail_help/resize_request_status_error_error_error_detail_help.dart';
import '../resize_request_status_error_error_error_detail_localized_message/resize_request_status_error_error_error_detail_localized_message.dart';
import '../resize_request_status_error_error_error_detail_quota_info/resize_request_status_error_error_error_detail_quota_info.dart';

class ResizeRequestStatusErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusErrorErrorErrorDetailErrorInfo>? errorInfos;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusErrorErrorErrorDetailHelp>? helps;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>?
      localizedMessages;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusErrorErrorErrorDetailQuotaInfo>? quotaInfos;

  ResizeRequestStatusErrorErrorErrorDetail({
    this.errorInfos,
    this.helps,
    this.localizedMessages,
    this.quotaInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorInfosValue = errorInfos;
    if (errorInfosValue != null) {
      map['errorInfos'] = Input.encodeList<
          ResizeRequestStatusErrorErrorErrorDetailErrorInfo,
          Map<String, dynamic>>(errorInfosValue, (value) => value.toMap());
    }
    final helpsValue = helps;
    if (helpsValue != null) {
      map['helps'] = Input.encodeList<
          ResizeRequestStatusErrorErrorErrorDetailHelp,
          Map<String, dynamic>>(helpsValue, (value) => value.toMap());
    }
    final localizedMessagesValue = localizedMessages;
    if (localizedMessagesValue != null) {
      map['localizedMessages'] = Input.encodeList<
              ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage,
              Map<String, dynamic>>(
          localizedMessagesValue, (value) => value.toMap());
    }
    final quotaInfosValue = quotaInfos;
    if (quotaInfosValue != null) {
      map['quotaInfos'] = Input.encodeList<
          ResizeRequestStatusErrorErrorErrorDetailQuotaInfo,
          Map<String, dynamic>>(quotaInfosValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResizeRequestStatusErrorErrorErrorDetail.fromMap(
      Map<String, dynamic> map) {
    return ResizeRequestStatusErrorErrorErrorDetail(
      errorInfos: map['errorInfos'] == null
          ? null
          : Input.decodeList<ResizeRequestStatusErrorErrorErrorDetailErrorInfo>(
              map['errorInfos'],
              (value) =>
                  ResizeRequestStatusErrorErrorErrorDetailErrorInfo.fromMap(
                      (value as Map).cast<String, dynamic>())),
      helps: map['helps'] == null
          ? null
          : Input.decodeList<ResizeRequestStatusErrorErrorErrorDetailHelp>(
              map['helps'],
              (value) => ResizeRequestStatusErrorErrorErrorDetailHelp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      localizedMessages: map['localizedMessages'] == null
          ? null
          : Input.decodeList<
                  ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>(
              map['localizedMessages'],
              (value) =>
                  ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage
                      .fromMap((value as Map).cast<String, dynamic>())),
      quotaInfos: map['quotaInfos'] == null
          ? null
          : Input.decodeList<ResizeRequestStatusErrorErrorErrorDetailQuotaInfo>(
              map['quotaInfos'],
              (value) =>
                  ResizeRequestStatusErrorErrorErrorDetailQuotaInfo.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
