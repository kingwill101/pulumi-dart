import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_args.dart';
import 'quota_state.dart';

/// ## Import
///
/// Max Compute Quota can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:maxcompute/quota:Quota example <id>
/// ```
class Quota extends pulumi.CustomResource {
  /// Valid values: odps_intl/odpsplus_intl/odps/odpsplus
  /// - *NOTE:** --odps_intl: International Station standard post-payment -- odpsplus_intl: International Station standard pre-payment -- odps: China Station standard post-payment -- odpsplus: China Station standard pre-payment
  late final pulumi.Output<String> commodityCode;
  /// Define quota rules when creating quotas, for example:{"CU":50,"ord_time":"1:Month","autoRenew":false}.
  /// CU (minimum quota resource size is 50)
  /// ord_time 1:Month/Year (1 means quantity: Month/Year is the unit)
  /// autoRenew (whether to enable automatic renewal)
  /// If PaymentType is PayAsYouGo, you do not need to fill in
  late final pulumi.Output<String?> commodityData;
  /// Quota partial nickname, supports English letters and numbers, up to 24 characters
  ///
  /// &gt; **NOTE:** If PaymentType is PayAsYouGo, you do not need to fill it in
  late final pulumi.Output<String?> partNickName;
  /// Payment type. Valid values: Subscription/PayAsYouGo
  ///
  /// &gt; **NOTE:** -- PayAsYouGo only needs to be opened once per region
  late final pulumi.Output<String> paymentType;
  /// Secondary Quota list
  ///
  /// &gt; **NOTE:** -- Add: If the configuration contains a second-level Quota that does not exist, a second-level Quota is added. -- Delete: If the configuration does not contain the existing secondary Quota, it will be deleted. -- Modify: If the configuration is inconsistent with the existing secondary Quota configuration parameters, the secondary Quota configuration will be updated. -- The default secondary Quota must be configured and cannot be deleted.
  /// See `sub_quota_info_list` below.
  late final pulumi.Output<List<Map<String, dynamic>>> subQuotaInfoLists;

  /// Creates a new [Quota].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Quota]. {@macro pulumi_maxcompute_quota_quota_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Quota(
    String name, {
    QuotaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/quota:Quota',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    commodityCode = registerOutput<String>('commodityCode');
    commodityData = registerOutput<String?>('commodityData');
    partNickName = registerOutput<String?>('partNickName');
    paymentType = registerOutput<String>('paymentType');
    subQuotaInfoLists = registerOutput<List<Map<String, dynamic>>>('subQuotaInfoLists');
  }

  /// Gets an existing [Quota] resource's state with the given [name] and [id].
  static Quota get(
    String name,
    pulumi.Input<String> id, {
    QuotaState? state,
  }) {
    return Quota._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Quota._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/quota:Quota',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    commodityCode = registerOutput<String>('commodityCode');
    commodityData = registerOutput<String?>('commodityData');
    partNickName = registerOutput<String?>('partNickName');
    paymentType = registerOutput<String>('paymentType');
    subQuotaInfoLists = registerOutput<List<Map<String, dynamic>>>('subQuotaInfoLists');
  }
}
