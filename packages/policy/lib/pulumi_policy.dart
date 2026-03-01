// Keeping a named library here prevents dangling library docs on export-only
// files while preserving generated API documentation at package root.
// ignore_for_file: unnecessary_library_name

/// Dart Policy as Code SDK for Pulumi.
///
/// This library exports the full public policy authoring API:
///
/// - Policy pack declaration via `PolicyPack`.
/// - Resource and stack policy types.
/// - Validation/remediation callback argument types.
/// - Typed helper templates such as `validateResourceOfType`.
///
/// ## Quick start
///
/// ```dart
/// import 'package:pulumi_policy/pulumi_policy.dart';
///
/// void main() {
///   PolicyPack(
///     'simple',
///     PolicyPackArgs(
///       policies: [
///         ResourceValidationPolicy(
///           name: 'no-public-read',
///           description: 'Disallow public read values.',
///           enforcementLevel: EnforcementLevel.mandatory,
///           validateResource: [
///             validateResourceOfType<Map<String, Object?>>(
///               'aws:s3/bucket:Bucket',
///               (props, args, reportViolation) {
///                 if (props['acl'] == 'public-read') {
///                   reportViolation('Bucket ACL cannot be public-read.');
///                 }
///               },
///             ),
///           ],
///         ),
///       ],
///     ),
///   );
/// }
/// ```
///
/// ## Reusable templates (macros)
///
/// The package includes helper builders that act like policy templates/macros:
///
/// - `validateResourceOfType` for typed resource-only checks.
/// - `remediateResourceOfType` for typed remediation.
/// - `validateRemediateResourceOfType` for paired validate+remediate flows.
/// - `validateStackResourcesOfType` for stack-level typed grouping.
library pulumi_policy;

export 'src/policy.dart';
