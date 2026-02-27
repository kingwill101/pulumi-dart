import 'package:pulumi/pulumi.dart';
import 'package_association_args.dart';

/// Manages an AWS Opensearch Package Association.
///
/// ## Example Usage
///
/// ### Basic Usage
class PackageAssociation extends CustomResource {
  /// Name of the domain to associate the package with.
  late final Output<String> domainName;

  /// Internal ID of the package to associate with a domain.
  late final Output<String> packageId;
  late final Output<String> referencePath;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PackageAssociation(
    String name, {
    PackageAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/packageAssociation:PackageAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainName = registerOutput<String>('domainName');
    this.packageId = registerOutput<String>('packageId');
    this.referencePath = registerOutput<String>('referencePath');
    this.region = registerOutput<String>('region');
  }
}
