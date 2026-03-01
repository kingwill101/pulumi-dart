// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_last_attempt_error_error_error_detail_error_info.dart';
import 'region_resize_request_status_last_attempt_error_error_error_detail_help.dart';
import 'region_resize_request_status_last_attempt_error_error_error_detail_localized_message.dart';
import 'region_resize_request_status_last_attempt_error_error_error_detail_quota_info.dart';

class RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<
    RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo
  >?
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
    RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage
  >?
  localizedMessages;

  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<
    RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo
  >?
  quotaInfos;

  /// Creates a new [RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail].
  /// [errorInfos] (Output)
  /// [helps] (Output)
  /// [localizedMessages] (Output)
  /// [quotaInfos] (Output)
  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail({
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
              RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo,
              Map<String, dynamic>
            >(errorInfos!, (value) => value.toMap()),
      'helps': ?helps == null
          ? null
          : pulumi.Input.encodeList<
              RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp,
              Map<String, dynamic>
            >(helps!, (value) => value.toMap()),
      'localizedMessages': ?localizedMessages == null
          ? null
          : pulumi.Input.encodeList<
              RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage,
              Map<String, dynamic>
            >(localizedMessages!, (value) => value.toMap()),
      'quotaInfos': ?quotaInfos == null
          ? null
          : pulumi.Input.encodeList<
              RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo,
              Map<String, dynamic>
            >(quotaInfos!, (value) => value.toMap()),
    };
  }

  factory RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail(
      errorInfos: map['errorInfos'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo
            >(
              map['errorInfos'],
              (value) =>
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      helps: map['helps'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp
            >(
              map['helps'],
              (value) =>
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      localizedMessages: map['localizedMessages'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage
            >(
              map['localizedMessages'],
              (value) =>
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      quotaInfos: map['quotaInfos'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo
            >(
              map['quotaInfos'],
              (value) =>
                  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
