// ignore_for_file: unused_element, unnecessary_cast

import 'domain_features_hyper_vtlb_flush_direct.dart';
import 'domain_features_hyper_vtlb_flush_extended.dart';

class DomainFeaturesHyperVTlbFlush {
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVTlbFlushDirect? direct;
  /// Enables or disables support for PS/2 devices in the virtual machine.
  final DomainFeaturesHyperVTlbFlushExtended? extended;

  /// Creates a new [DomainFeaturesHyperVTlbFlush].
  /// [direct] Enables or disables support for PS/2 devices in the virtual machine.
  /// [extended] Enables or disables support for PS/2 devices in the virtual machine.
  DomainFeaturesHyperVTlbFlush({
    this.direct,
    this.extended,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direct': ?direct == null ? null : direct!.toMap(),
      'extended': ?extended == null ? null : extended!.toMap(),
    };
  }

  factory DomainFeaturesHyperVTlbFlush.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesHyperVTlbFlush(
      direct: map['direct'] == null ? null : DomainFeaturesHyperVTlbFlushDirect.fromMap((map['direct'] as Map).cast<String, dynamic>()),
      extended: map['extended'] == null ? null : DomainFeaturesHyperVTlbFlushExtended.fromMap((map['extended'] as Map).cast<String, dynamic>()),
    );
  }
}

