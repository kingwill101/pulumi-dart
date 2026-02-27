// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_resize_request_status_error_error_error_detail_error_info/region_resize_request_status_error_error_error_detail_error_info.dart';
import '../region_resize_request_status_error_error_error_detail_help/region_resize_request_status_error_error_error_detail_help.dart';
import '../region_resize_request_status_error_error_error_detail_localized_message/region_resize_request_status_error_error_error_detail_localized_message.dart';
import '../region_resize_request_status_error_error_error_detail_quota_info/region_resize_request_status_error_error_error_detail_quota_info.dart';

class RegionResizeRequestStatusErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo>?
      errorInfos;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusErrorErrorErrorDetailHelp>? helps;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>?
      localizedMessages;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo>?
      quotaInfos;

  RegionResizeRequestStatusErrorErrorErrorDetail({
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
          RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo,
          Map<String, dynamic>>(errorInfosValue, (value) => value.toMap());
    }
    final helpsValue = helps;
    if (helpsValue != null) {
      map['helps'] = pulumi.Input.encodeList<
          RegionResizeRequestStatusErrorErrorErrorDetailHelp,
          Map<String, dynamic>>(helpsValue, (value) => value.toMap());
    }
    final localizedMessagesValue = localizedMessages;
    if (localizedMessagesValue != null) {
      map['localizedMessages'] = pulumi.Input.encodeList<
              RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage,
              Map<String, dynamic>>(
          localizedMessagesValue, (value) => value.toMap());
    }
    final quotaInfosValue = quotaInfos;
    if (quotaInfosValue != null) {
      map['quotaInfos'] = pulumi.Input.encodeList<
          RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo,
          Map<String, dynamic>>(quotaInfosValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionResizeRequestStatusErrorErrorErrorDetail.fromMap(
      Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetail(
      errorInfos: map['errorInfos'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo>(
              map['errorInfos'],
              (value) => RegionResizeRequestStatusErrorErrorErrorDetailErrorInfo
                  .fromMap((value as Map).cast<String, dynamic>())),
      helps: map['helps'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionResizeRequestStatusErrorErrorErrorDetailHelp>(
              map['helps'],
              (value) =>
                  RegionResizeRequestStatusErrorErrorErrorDetailHelp.fromMap(
                      (value as Map).cast<String, dynamic>())),
      localizedMessages: map['localizedMessages'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage>(
              map['localizedMessages'],
              (value) =>
                  RegionResizeRequestStatusErrorErrorErrorDetailLocalizedMessage
                      .fromMap((value as Map).cast<String, dynamic>())),
      quotaInfos: map['quotaInfos'] == null
          ? null
          : pulumi.Input.decodeList<
                  RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo>(
              map['quotaInfos'],
              (value) => RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
