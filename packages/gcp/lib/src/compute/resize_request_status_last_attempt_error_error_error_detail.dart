// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_last_attempt_error_error_error_detail_error_info.dart';
import 'resize_request_status_last_attempt_error_error_error_detail_help.dart';
import 'resize_request_status_last_attempt_error_error_error_detail_localized_message.dart';
import 'resize_request_status_last_attempt_error_error_error_detail_quota_info.dart';

class ResizeRequestStatusLastAttemptErrorErrorErrorDetail {
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>? errorInfos;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>? helps;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>? localizedMessages;
  /// (Output)
  /// A nested object resource.
  /// Structure is documented below.
  final List<ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>? quotaInfos;

  /// Creates a new [ResizeRequestStatusLastAttemptErrorErrorErrorDetail].
  /// [errorInfos] (Output)
  /// [helps] (Output)
  /// [localizedMessages] (Output)
  /// [quotaInfos] (Output)
  ResizeRequestStatusLastAttemptErrorErrorErrorDetail({
    this.errorInfos,
    this.helps,
    this.localizedMessages,
    this.quotaInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorInfos': ?errorInfos == null ? null : pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo, Map<String, dynamic>>(errorInfos!, (value) => value.toMap()),
      'helps': ?helps == null ? null : pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp, Map<String, dynamic>>(helps!, (value) => value.toMap()),
      'localizedMessages': ?localizedMessages == null ? null : pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage, Map<String, dynamic>>(localizedMessages!, (value) => value.toMap()),
      'quotaInfos': ?quotaInfos == null ? null : pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo, Map<String, dynamic>>(quotaInfos!, (value) => value.toMap()),
    };
  }

  factory ResizeRequestStatusLastAttemptErrorErrorErrorDetail.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttemptErrorErrorErrorDetail(
      errorInfos: map['errorInfos'] == null ? null : pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo>(map['errorInfos'], (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailErrorInfo.fromMap((value as Map).cast<String, dynamic>())),
      helps: map['helps'] == null ? null : pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp>(map['helps'], (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailHelp.fromMap((value as Map).cast<String, dynamic>())),
      localizedMessages: map['localizedMessages'] == null ? null : pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage>(map['localizedMessages'], (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailLocalizedMessage.fromMap((value as Map).cast<String, dynamic>())),
      quotaInfos: map['quotaInfos'] == null ? null : pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo>(map['quotaInfos'], (value) => ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

