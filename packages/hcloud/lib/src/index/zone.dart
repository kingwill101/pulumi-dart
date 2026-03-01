import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_args.dart';
import 'zone_authoritative_nameservers.dart';
import 'zone_primary_nameserver.dart';

/// Provides a Hetzner Cloud Zone resource.
///
/// This can be used to create, modify, and delete Zones.
///
/// For Internationalized domain names (IDN), see the `provider::hcloud::idna` function.
///
/// See the [Zones API documentation](https://docs.hetzner.cloud/reference/cloud#zones) for more details.
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/zone:Zone example "$ZONE_ID_OR_NAME"
/// ```
class Zone extends pulumi.CustomResource {
  /// Authoritative nameservers of the Zone.
  late final pulumi.Output<ZoneAuthoritativeNameservers> authoritativeNameservers;
  /// Whether delete protection is enabled.
  late final pulumi.Output<bool> deleteProtection;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  late final pulumi.Output<Map<String, String>> labels;
  /// Mode of the Zone.
  late final pulumi.Output<String> mode;
  /// Name of the Zone.
  late final pulumi.Output<String> name;
  /// Primary nameservers of the Zone. Forbidden when mode is primary and required when mode is secondary.
  late final pulumi.Output<List<ZonePrimaryNameserver>> primaryNameservers;
  /// Registrar of the Zone.
  late final pulumi.Output<String> registrar;
  /// Default Time To Live (TTL) of the Zone.
  late final pulumi.Output<int> ttl;

  /// Creates a new [Zone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Zone]. {@macro pulumi_index_zone_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Zone(
    String name, {
    ZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/zone:Zone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authoritativeNameservers = registerOutput<ZoneAuthoritativeNameservers>('authoritativeNameservers');
    this.deleteProtection = registerOutput<bool>('deleteProtection');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.primaryNameservers = registerOutput<List<ZonePrimaryNameserver>>('primaryNameservers');
    this.registrar = registerOutput<String>('registrar');
    this.ttl = registerOutput<int>('ttl');
  }
}
