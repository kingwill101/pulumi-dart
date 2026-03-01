import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_args.dart';
import 'subnet_state.dart';

class Subnet extends pulumi.CustomResource {
  late final pulumi.Output<String> availabilityZone;
  late final pulumi.Output<String> cidrBlock;
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<bool?> enableIpv6;
  late final pulumi.Output<String> ipv6CidrBlock;
  late final pulumi.Output<int> ipv6CidrBlockMask;
  late final pulumi.Output<bool?> isDefault;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> status;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> vpcId;
  late final pulumi.Output<String> vswitchName;
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Subnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subnet]. {@macro pulumi_vpc_subnet_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subnet(
    String name, {
    SubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.enableIpv6 = registerOutput<bool?>('enableIpv6');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlockMask = registerOutput<int>('ipv6CidrBlockMask');
    this.isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchName = registerOutput<String>('vswitchName');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Subnet] resource's state with the given [name] and [id].
  static Subnet get(
    String name,
    pulumi.Input<String> id, {
    SubnetState? state,
  }) {
    return Subnet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Subnet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.enableIpv6 = registerOutput<bool?>('enableIpv6');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlockMask = registerOutput<int>('ipv6CidrBlockMask');
    this.isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchName = registerOutput<String>('vswitchName');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
