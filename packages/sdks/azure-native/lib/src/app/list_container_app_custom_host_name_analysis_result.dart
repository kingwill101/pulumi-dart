// ignore_for_file: unused_element, unnecessary_cast

import 'custom_hostname_analysis_result_response_custom_domain_verification_failure_info.dart';

/// Result data returned by listContainerAppCustomHostNameAnalysis.
class ListContainerAppCustomHostNameAnalysisResult {
  /// A records visible for this hostname.
  final List<String>? aRecords;
  /// Alternate CName records visible for this hostname.
  final List<String>? alternateCNameRecords;
  /// Alternate TXT records visible for this hostname.
  final List<String>? alternateTxtRecords;
  /// CName records visible for this hostname.
  final List<String>? cNameRecords;
  /// &lt;code&gt;true&lt;/code&gt; if there is a conflict on the Container App's managed environment level custom domain; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final bool conflictWithEnvironmentCustomDomain;
  /// Name of the conflicting Container App on the Managed Environment if it's within the same subscription.
  final String conflictingContainerAppResourceId;
  /// Raw failure information if DNS verification fails.
  final CustomHostnameAnalysisResultResponseCustomDomainVerificationFailureInfo customDomainVerificationFailureInfo;
  /// DNS verification test result.
  final String customDomainVerificationTest;
  /// &lt;code&gt;true&lt;/code&gt; if there is a conflict on the Container App's managed environment; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final bool hasConflictOnManagedEnvironment;
  /// Host name that was analyzed
  final String hostName;
  /// &lt;code&gt;true&lt;/code&gt; if hostname is already verified; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final bool isHostnameAlreadyVerified;
  /// TXT records visible for this hostname.
  final List<String>? txtRecords;

  /// Creates a new [ListContainerAppCustomHostNameAnalysisResult].
  /// [aRecords] A records visible for this hostname.
  /// [alternateCNameRecords] Alternate CName records visible for this hostname.
  /// [alternateTxtRecords] Alternate TXT records visible for this hostname.
  /// [cNameRecords] CName records visible for this hostname.
  /// [conflictWithEnvironmentCustomDomain] &lt;code&gt;true&lt;/code&gt; if there is a conflict on the Container App's managed environment level custom domain; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [conflictingContainerAppResourceId] Name of the conflicting Container App on the Managed Environment if it's within the same subscription.
  /// [customDomainVerificationFailureInfo] Raw failure information if DNS verification fails.
  /// [customDomainVerificationTest] DNS verification test result.
  /// [hasConflictOnManagedEnvironment] &lt;code&gt;true&lt;/code&gt; if there is a conflict on the Container App's managed environment; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [hostName] Host name that was analyzed
  /// [isHostnameAlreadyVerified] &lt;code&gt;true&lt;/code&gt; if hostname is already verified; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [txtRecords] TXT records visible for this hostname.
  const ListContainerAppCustomHostNameAnalysisResult({
    this.aRecords,
    this.alternateCNameRecords,
    this.alternateTxtRecords,
    this.cNameRecords,
    required this.conflictWithEnvironmentCustomDomain,
    required this.conflictingContainerAppResourceId,
    required this.customDomainVerificationFailureInfo,
    required this.customDomainVerificationTest,
    required this.hasConflictOnManagedEnvironment,
    required this.hostName,
    required this.isHostnameAlreadyVerified,
    this.txtRecords,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aRecords': ?aRecords,
      'alternateCNameRecords': ?alternateCNameRecords,
      'alternateTxtRecords': ?alternateTxtRecords,
      'cNameRecords': ?cNameRecords,
      'conflictWithEnvironmentCustomDomain': conflictWithEnvironmentCustomDomain,
      'conflictingContainerAppResourceId': conflictingContainerAppResourceId,
      'customDomainVerificationFailureInfo': customDomainVerificationFailureInfo.toMap(),
      'customDomainVerificationTest': customDomainVerificationTest,
      'hasConflictOnManagedEnvironment': hasConflictOnManagedEnvironment,
      'hostName': hostName,
      'isHostnameAlreadyVerified': isHostnameAlreadyVerified,
      'txtRecords': ?txtRecords,
    };
  }

  factory ListContainerAppCustomHostNameAnalysisResult.fromMap(Map<String, dynamic> map) {
    return ListContainerAppCustomHostNameAnalysisResult(
      aRecords: (() { final guardedValue = map['aRecords']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      alternateCNameRecords: (() { final guardedValue = map['alternateCNameRecords']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      alternateTxtRecords: (() { final guardedValue = map['alternateTxtRecords']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      cNameRecords: (() { final guardedValue = map['cNameRecords']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      conflictWithEnvironmentCustomDomain: map['conflictWithEnvironmentCustomDomain'] as bool,
      conflictingContainerAppResourceId: map['conflictingContainerAppResourceId'] as String,
      customDomainVerificationFailureInfo: CustomHostnameAnalysisResultResponseCustomDomainVerificationFailureInfo.fromMap((map['customDomainVerificationFailureInfo']! as Map).cast<String, dynamic>()),
      customDomainVerificationTest: map['customDomainVerificationTest'] as String,
      hasConflictOnManagedEnvironment: map['hasConflictOnManagedEnvironment'] as bool,
      hostName: map['hostName'] as String,
      isHostnameAlreadyVerified: map['isHostnameAlreadyVerified'] as bool,
      txtRecords: (() { final guardedValue = map['txtRecords']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

