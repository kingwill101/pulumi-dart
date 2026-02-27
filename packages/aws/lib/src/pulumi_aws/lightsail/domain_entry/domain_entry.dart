import 'package:pulumi/pulumi.dart';
import 'domain_entry_args.dart';

/// Manages a Lightsail domain entry (DNS record). Use this resource to define how DNS queries for your domain are handled.
///
/// > **NOTE on `id`:** In an effort to simplify imports, this resource `id` field has been updated to the standard resource id separator, a comma (`,`). For backward compatibility, the previous separator (underscore `_`) can still be used to read and import existing resources. When state is refreshed, the `id` will be updated to use the new standard separator. The previous separator will be deprecated in a future major release.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Domain Entry using the id attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/domainEntry:DomainEntry example www,example.com,A,127.0.0.1
/// ```
class DomainEntry extends CustomResource {
  /// Name of the Lightsail domain in which to create the entry.
  late final Output<String> domainName;

  /// Whether the entry should be an alias. Default: `false`.
  late final Output<bool?> isAlias;

  /// Name of the entry record.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Target of the domain entry.
  late final Output<String> target;

  /// Type of record. Valid values: `A`, `AAAA`, `CNAME`, `MX`, `NS`, `SOA`, `SRV`, `TXT`.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  DomainEntry(
    String name, {
    DomainEntryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/domainEntry:DomainEntry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.isAlias = registerOutput<bool?>('isAlias');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.target = registerOutput<String>('target');
    this.type = registerOutput<String>('type');
  }
}
