import 'package:pulumi/pulumi.dart';
import '../package_package_source/package_package_source.dart';
import 'package_args.dart';

/// Manages an AWS Opensearch Package.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Opensearch Packages using the Package ID. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/package:Package example package-id
/// ```
class Package extends CustomResource {
  /// The current version of the package.
  late final Output<String> availablePackageVersion;

  /// Engine version that the package is compatible with. This argument is required and only valid when `package_type` is `ZIP-PLUGIN`. Format: `OpenSearch_X.Y` or `Elasticsearch_X.Y`, where `X` and `Y` are the major and minor version numbers, respectively.
  late final Output<String?> engineVersion;

  /// Description of the package.
  late final Output<String?> packageDescription;
  late final Output<String> packageId;

  /// Unique name for the package.
  late final Output<String> packageName;

  /// Configuration block for the package source options.
  late final Output<PackagePackageSource> packageSource;

  /// The type of package. Valid values are `TXT-DICTIONARY`, `ZIP-PLUGIN`, `PACKAGE-LICENSE` and `PACKAGE-CONFIG`.
  late final Output<String> packageType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Package(
    String name, {
    PackageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/package:Package',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availablePackageVersion =
        registerOutput<String>('availablePackageVersion');
    this.engineVersion = registerOutput<String?>('engineVersion');
    this.packageDescription = registerOutput<String?>('packageDescription');
    this.packageId = registerOutput<String>('packageId');
    this.packageName = registerOutput<String>('packageName');
    this.packageSource = registerOutput<PackagePackageSource>('packageSource');
    this.packageType = registerOutput<String>('packageType');
    this.region = registerOutput<String>('region');
  }
}
