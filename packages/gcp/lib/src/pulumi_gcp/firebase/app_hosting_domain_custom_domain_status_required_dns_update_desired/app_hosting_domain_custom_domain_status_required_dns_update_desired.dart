// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_hosting_domain_custom_domain_status_required_dns_update_desired_check_error/app_hosting_domain_custom_domain_status_required_dns_update_desired_check_error.dart';
import '../app_hosting_domain_custom_domain_status_required_dns_update_desired_record/app_hosting_domain_custom_domain_status_required_dns_update_desired_record.dart';

class AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired {
  /// (Output)
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final List<
          AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredCheckError>?
      checkErrors;

  /// (Output)
  /// The domain the record pertains to, e.g. `foo.bar.com.`.
  final String? domainName;

  /// (Output)
  /// Records on the domain.
  /// Structure is documented below.
  final List<AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredRecord>?
      records;

  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired({
    this.checkErrors,
    this.domainName,
    this.records,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checkErrorsValue = checkErrors;
    if (checkErrorsValue != null) {
      map['checkErrors'] = Input.encodeList<
          AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredCheckError,
          Map<String, dynamic>>(checkErrorsValue, (value) => value.toMap());
    }
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final recordsValue = records;
    if (recordsValue != null) {
      map['records'] = Input.encodeList<
          AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredRecord,
          Map<String, dynamic>>(recordsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired.fromMap(
      Map<String, dynamic> map) {
    return AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesired(
      checkErrors: map['checkErrors'] == null
          ? null
          : Input.decodeList<
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredCheckError>(
              map['checkErrors'],
              (value) =>
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredCheckError
                      .fromMap((value as Map).cast<String, dynamic>())),
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      records: map['records'] == null
          ? null
          : Input.decodeList<
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredRecord>(
              map['records'],
              (value) =>
                  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDesiredRecord
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
