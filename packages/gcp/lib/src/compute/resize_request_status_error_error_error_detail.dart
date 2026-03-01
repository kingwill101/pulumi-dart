// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_error_error_error_detail_error_info.dart';
import 'resize_request_status_error_error_error_detail_help.dart';
import 'resize_request_status_error_error_error_detail_localized_message.dart';
import 'resize_request_status_error_error_error_detail_quota_info.dart';

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

  /// Creates a new [ResizeRequestStatusErrorErrorErrorDetail].
  /// [errorInfos] (Output)
  /// [helps] (Output)
  /// [localizedMessages] (Output)
  /// [quotaInfos] (Output)
  ResizeRequestStatusErrorErrorErrorDetail({
    this.errorInfos,
    this.helps,
    this.localizedMessages,
    this.quotaInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorInfos': ?errorInfos == null
          ? null
          : pulumi.Input.encodeList<
              ResizeRequestStatusErrorErrorErrorDetailErrorInfo,
              Map<String, dynamic>
            >(errorInfos!, (value) => value.toMap()),
      'helps': ?helps == null
          ? null
          : pulumi.Input.encodeList<
              ResizeRequestStatusErrorErrorErrorDetailHelp,
              Map<String, dynamic>
            >(helps!, (value) => value.toMap()),
      'localizedMessages': ?localizedMessages == null
          ? null
          : pulumi.Input.encodeList<
              ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage,
              Map<String, dynamic>
            >(localizedMessages!, (value) => value.toMap()),
      'quotaInfos': ?quotaInfos == null
          ? null
          : pulumi.Input.encodeList<
              ResizeRequestStatusErrorErrorErrorDetailQuotaInfo,
              Map<String, dynamic>
            >(quotaInfos!, (value) => value.toMap()),
    };
  }

  factory ResizeRequestStatusErrorErrorErrorDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResizeRequestStatusErrorErrorErrorDetail(
      errorInfos: map['errorInfos'] == null
          ? null
          : pulumi.Input.decodeList<
              ResizeRequestStatusErrorErrorErrorDetailErrorInfo
            >(
              map['errorInfos'],
              (value) =>
                  ResizeRequestStatusErrorErrorErrorDetailErrorInfo.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      helps: map['helps'] == null
          ? null
          : pulumi
                .Input.decodeList<ResizeRequestStatusErrorErrorErrorDetailHelp>(
              map['helps'],
              (value) => ResizeRequestStatusErrorErrorErrorDetailHelp.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      localizedMessages: map['localizedMessages'] == null
          ? null
          : pulumi.Input.decodeList<
              ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage
            >(
              map['localizedMessages'],
              (value) =>
                  ResizeRequestStatusErrorErrorErrorDetailLocalizedMessage.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      quotaInfos: map['quotaInfos'] == null
          ? null
          : pulumi.Input.decodeList<
              ResizeRequestStatusErrorErrorErrorDetailQuotaInfo
            >(
              map['quotaInfos'],
              (value) =>
                  ResizeRequestStatusErrorErrorErrorDetailQuotaInfo.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
