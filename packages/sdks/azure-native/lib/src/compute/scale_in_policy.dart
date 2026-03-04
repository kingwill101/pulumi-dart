// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a scale-in policy for a virtual machine scale set.
class ScaleInPolicy {
  /// This property allows you to specify if virtual machines chosen for removal have to be force deleted when a virtual machine scale set is being scaled-in.(Feature in Preview)
  final pulumi.Input<bool>? forceDeletion;

  /// This property allows you to prioritize the deletion of unhealthy and inactive VMs when a virtual machine scale set is being scaled-in.(Feature in Preview)
  final pulumi.Input<bool>? prioritizeUnhealthyVMs;

  /// The rules to be followed when scaling-in a virtual machine scale set. &lt;br&gt;&lt;br&gt; Possible values are: &lt;br&gt;&lt;br&gt; **Default** When a virtual machine scale set is scaled in, the scale set will first be balanced across zones if it is a zonal scale set. Then, it will be balanced across Fault Domains as far as possible. Within each Fault Domain, the virtual machines chosen for removal will be the newest ones that are not protected from scale-in. &lt;br&gt;&lt;br&gt; **OldestVM** When a virtual machine scale set is being scaled-in, the oldest virtual machines that are not protected from scale-in will be chosen for removal. For zonal virtual machine scale sets, the scale set will first be balanced across zones. Within each zone, the oldest virtual machines that are not protected will be chosen for removal. &lt;br&gt;&lt;br&gt; **NewestVM** When a virtual machine scale set is being scaled-in, the newest virtual machines that are not protected from scale-in will be chosen for removal. For zonal virtual machine scale sets, the scale set will first be balanced across zones. Within each zone, the newest virtual machines that are not protected will be chosen for removal. &lt;br&gt;&lt;br&gt;
  final pulumi.Input<List<String>>? rules;

  /// Creates a new [ScaleInPolicy].
  /// [forceDeletion] This property allows you to specify if virtual machines chosen for removal have to be force deleted when a virtual machine scale set is being scaled-in.(Feature in Preview)
  /// [prioritizeUnhealthyVMs] This property allows you to prioritize the deletion of unhealthy and inactive VMs when a virtual machine scale set is being scaled-in.(Feature in Preview)
  /// [rules] The rules to be followed when scaling-in a virtual machine scale set. &lt;br&gt;&lt;br&gt; Possible values are: &lt;br&gt;&lt;br&gt; **Default** When a virtual machine scale set is scaled in, the scale set will first be balanced across zones if it is a zonal scale set. Then, it will be balanced across Fault Domains as far as possible. Within each Fault Domain, the virtual machines chosen for removal will be the newest ones that are not protected from scale-in. &lt;br&gt;&lt;br&gt; **OldestVM** When a virtual machine scale set is being scaled-in, the oldest virtual machines that are not protected from scale-in will be chosen for removal. For zonal virtual machine scale sets, the scale set will first be balanced across zones. Within each zone, the oldest virtual machines that are not protected will be chosen for removal. &lt;br&gt;&lt;br&gt; **NewestVM** When a virtual machine scale set is being scaled-in, the newest virtual machines that are not protected from scale-in will be chosen for removal. For zonal virtual machine scale sets, the scale set will first be balanced across zones. Within each zone, the newest virtual machines that are not protected will be chosen for removal. &lt;br&gt;&lt;br&gt;
  ScaleInPolicy({this.forceDeletion, this.prioritizeUnhealthyVMs, this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDeletion': ?forceDeletion,
      'prioritizeUnhealthyVMs': ?prioritizeUnhealthyVMs,
      'rules': ?rules,
    };
  }

  factory ScaleInPolicy.fromMap(Map<String, dynamic> map) {
    return ScaleInPolicy(
      forceDeletion: (() {
        final guardedValue = map['forceDeletion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      prioritizeUnhealthyVMs: (() {
        final guardedValue = map['prioritizeUnhealthyVMs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
