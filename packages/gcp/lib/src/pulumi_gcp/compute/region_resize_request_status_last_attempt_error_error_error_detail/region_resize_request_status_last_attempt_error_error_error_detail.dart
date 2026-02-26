// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_resize_request_status_last_attempt_error_error_error_detail_error_info/region_resize_request_status_last_attempt_error_error_error_detail_error_info.dart';
import '../region_resize_request_status_last_attempt_error_error_error_detail_help/region_resize_request_status_last_attempt_error_error_error_detail_help.dart';
import '../region_resize_request_status_last_attempt_error_error_error_detail_localized_message/region_resize_request_status_last_attempt_error_error_error_detail_localized_message.dart';
import '../region_resize_request_status_last_attempt_error_error_error_detail_quota_info/region_resize_request_status_last_attempt_error_error_error_detail_quota_info.dart';

class RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<
          RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>?
      errorInfos;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>?
      helps;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<
          RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>?
      localizedMessages;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<
          RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>?
      quotaInfos;

  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail({
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
          RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo,
          Map<String, dynamic>>(errorInfosValue, (value) => value.toMap());
    }
    final helpsValue = helps;
    if (helpsValue != null) {
      map['helps'] = Input.encodeList<
          RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp,
          Map<String, dynamic>>(helpsValue, (value) => value.toMap());
    }
    final localizedMessagesValue = localizedMessages;
    if (localizedMessagesValue != null) {
      map['localizedMessages'] = Input.encodeList<
          RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage,
          Map<String,
              dynamic>>(localizedMessagesValue, (value) => value.toMap());
    }
    final quotaInfosValue = quotaInfos;
    if (quotaInfosValue != null) {
      map['quotaInfos'] = Input.encodeList<
          RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo,
          Map<String, dynamic>>(quotaInfosValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail.fromMap(
      Map<String, dynamic> map) {
    return RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail(
      errorInfos: map['errorInfos'] == null
          ? null
          : Input.decodeList<
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>(
              map['errorInfos'],
              (value) =>
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo
                      .fromMap((value as Map).cast<String, dynamic>())),
      helps: map['helps'] == null
          ? null
          : Input.decodeList<
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>(
              map['helps'],
              (value) =>
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp
                      .fromMap((value as Map).cast<String, dynamic>())),
      localizedMessages: map['localizedMessages'] == null
          ? null
          : Input.decodeList<
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>(
              map['localizedMessages'],
              (value) =>
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage
                      .fromMap((value as Map).cast<String, dynamic>())),
      quotaInfos: map['quotaInfos'] == null
          ? null
          : Input.decodeList<
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>(
              map['quotaInfos'],
              (value) =>
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
