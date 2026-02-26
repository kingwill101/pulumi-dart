// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../assessment_scope_aws_account/assessment_scope_aws_account.dart';
import '../assessment_scope_aws_service/assessment_scope_aws_service.dart';

class AssessmentScope {
  /// Amazon Web Services accounts that are in scope for the assessment. See <span pulumi-lang-nodejs="`awsAccounts`" pulumi-lang-dotnet="`AwsAccounts`" pulumi-lang-go="`awsAccounts`" pulumi-lang-python="`aws_accounts`" pulumi-lang-yaml="`awsAccounts`" pulumi-lang-java="`awsAccounts`">`aws_accounts`</span> below.
  final List<AssessmentScopeAwsAccount>? awsAccounts;

  /// Amazon Web Services services that are included in the scope of the assessment. See <span pulumi-lang-nodejs="`awsServices`" pulumi-lang-dotnet="`AwsServices`" pulumi-lang-go="`awsServices`" pulumi-lang-python="`aws_services`" pulumi-lang-yaml="`awsServices`" pulumi-lang-java="`awsServices`">`aws_services`</span> below.
  final List<AssessmentScopeAwsService>? awsServices;

  AssessmentScope({
    this.awsAccounts,
    this.awsServices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountsValue = awsAccounts;
    if (awsAccountsValue != null) {
      map['awsAccounts'] =
          Input.encodeList<AssessmentScopeAwsAccount, Map<String, dynamic>>(
              awsAccountsValue, (value) => value.toMap());
    }
    final awsServicesValue = awsServices;
    if (awsServicesValue != null) {
      map['awsServices'] =
          Input.encodeList<AssessmentScopeAwsService, Map<String, dynamic>>(
              awsServicesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AssessmentScope.fromMap(Map<String, dynamic> map) {
    return AssessmentScope(
      awsAccounts: map['awsAccounts'] == null
          ? null
          : Input.decodeList<AssessmentScopeAwsAccount>(
              map['awsAccounts'],
              (value) => AssessmentScopeAwsAccount.fromMap(
                  (value as Map).cast<String, dynamic>())),
      awsServices: map['awsServices'] == null
          ? null
          : Input.decodeList<AssessmentScopeAwsService>(
              map['awsServices'],
              (value) => AssessmentScopeAwsService.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
