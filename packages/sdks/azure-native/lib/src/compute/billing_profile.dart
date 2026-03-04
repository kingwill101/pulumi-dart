// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the billing related details of a Azure Spot VM or VMSS. Minimum api-version: 2019-03-01.
class BillingProfile {
  /// Specifies the maximum price you are willing to pay for a Azure Spot VM/VMSS. This price is in US Dollars. &lt;br&gt;&lt;br&gt; This price will be compared with the current Azure Spot price for the VM size. Also, the prices are compared at the time of create/update of Azure Spot VM/VMSS and the operation will only succeed if  the maxPrice is greater than the current Azure Spot price. &lt;br&gt;&lt;br&gt; The maxPrice will also be used for evicting a Azure Spot VM/VMSS if the current Azure Spot price goes beyond the maxPrice after creation of VM/VMSS. &lt;br&gt;&lt;br&gt; Possible values are: &lt;br&gt;&lt;br&gt; - Any decimal value greater than zero. Example: 0.01538 &lt;br&gt;&lt;br&gt; -1 – indicates default price to be up-to on-demand. &lt;br&gt;&lt;br&gt; You can set the maxPrice to -1 to indicate that the Azure Spot VM/VMSS should not be evicted for price reasons. Also, the default max price is -1 if it is not provided by you. &lt;br&gt;&lt;br&gt;Minimum api-version: 2019-03-01.
  final pulumi.Input<double>? maxPrice;

  /// Creates a new [BillingProfile].
  /// [maxPrice] Specifies the maximum price you are willing to pay for a Azure Spot VM/VMSS. This price is in US Dollars. &lt;br&gt;&lt;br&gt; This price will be compared with the current Azure Spot price for the VM size. Also, the prices are compared at the time of create/update of Azure Spot VM/VMSS and the operation will only succeed if  the maxPrice is greater than the current Azure Spot price. &lt;br&gt;&lt;br&gt; The maxPrice will also be used for evicting a Azure Spot VM/VMSS if the current Azure Spot price goes beyond the maxPrice after creation of VM/VMSS. &lt;br&gt;&lt;br&gt; Possible values are: &lt;br&gt;&lt;br&gt; - Any decimal value greater than zero. Example: 0.01538 &lt;br&gt;&lt;br&gt; -1 – indicates default price to be up-to on-demand. &lt;br&gt;&lt;br&gt; You can set the maxPrice to -1 to indicate that the Azure Spot VM/VMSS should not be evicted for price reasons. Also, the default max price is -1 if it is not provided by you. &lt;br&gt;&lt;br&gt;Minimum api-version: 2019-03-01.
  BillingProfile({this.maxPrice});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxPrice': ?maxPrice};
  }

  factory BillingProfile.fromMap(Map<String, dynamic> map) {
    return BillingProfile(
      maxPrice: (() {
        final guardedValue = map['maxPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
