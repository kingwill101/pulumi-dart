// ignore_for_file: unused_element, unnecessary_cast

import 'domain_launch_security_tdx_quote_generation_service.dart';

class DomainLaunchSecurityTdx {
  /// Sets the MR configuration identifier for TDX in the domain.
  final String? mrConfigId;
  /// Configures the MR owner field for TDX security in the domain.
  final String? mrOwner;
  /// Sets the configuration for the MR owner in the TDX environment.
  final String? mrOwnerConfig;
  /// Configures the security policy for TDX operations within the domain.
  final double? policy;
  /// Configures the quote generation service for TDX in the domain.
  final DomainLaunchSecurityTdxQuoteGenerationService? quoteGenerationService;

  /// Creates a new [DomainLaunchSecurityTdx].
  /// [mrConfigId] Sets the MR configuration identifier for TDX in the domain.
  /// [mrOwner] Configures the MR owner field for TDX security in the domain.
  /// [mrOwnerConfig] Sets the configuration for the MR owner in the TDX environment.
  /// [policy] Configures the security policy for TDX operations within the domain.
  /// [quoteGenerationService] Configures the quote generation service for TDX in the domain.
  DomainLaunchSecurityTdx({
    this.mrConfigId,
    this.mrOwner,
    this.mrOwnerConfig,
    this.policy,
    this.quoteGenerationService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mrConfigId': ?mrConfigId,
      'mrOwner': ?mrOwner,
      'mrOwnerConfig': ?mrOwnerConfig,
      'policy': ?policy,
      'quoteGenerationService': ?quoteGenerationService == null ? null : quoteGenerationService!.toMap(),
    };
  }

  factory DomainLaunchSecurityTdx.fromMap(Map<String, dynamic> map) {
    return DomainLaunchSecurityTdx(
      mrConfigId: map['mrConfigId'] == null ? null : map['mrConfigId'] as String,
      mrOwner: map['mrOwner'] == null ? null : map['mrOwner'] as String,
      mrOwnerConfig: map['mrOwnerConfig'] == null ? null : map['mrOwnerConfig'] as String,
      policy: map['policy'] == null ? null : map['policy'] as double,
      quoteGenerationService: map['quoteGenerationService'] == null ? null : DomainLaunchSecurityTdxQuoteGenerationService.fromMap((map['quoteGenerationService'] as Map).cast<String, dynamic>()),
    );
  }
}

